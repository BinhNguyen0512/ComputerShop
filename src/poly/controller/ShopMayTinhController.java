package poly.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Set;


import ptithcm.entity.ChiTietDDH;
import ptithcm.entity.DatHang;
import ptithcm.entity.KhachHang;
import ptithcm.entity.LoaiSP;
import ptithcm.entity.NhanVien;
import ptithcm.entity.SanPham;
import ptithcm.entity.TaiKhoan;


@Controller
@Transactional
@RequestMapping("/ShopMayTinh/")
public class ShopMayTinhController {
	public static String email1;
	public static int idUser;
	public static String tenUser;
	TaiKhoan tk1 = new TaiKhoan();
	@Autowired
	SessionFactory factory;
	@Autowired
	JavaMailSender mailer;
	@Autowired
	javax.servlet.ServletContext context;
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("USER", new TaiKhoan());
		return "login";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String login(@ModelAttribute("USER") TaiKhoan user, HttpServletRequest request, ModelMap model, BindingResult errors) {
		String email = user.getEmail().trim();
		
		String password = user.getPassword().trim();
		Session session = factory.getCurrentSession();
		String hql = "FROM TaiKhoan";
		Query query = session.createQuery(hql);
		List<TaiKhoan> listTK = query.list();
		
		if(email.length() == 0)
		{
			errors.rejectValue("email", "USER", "Vui lòng nhập Email !!!");
		}
		
		if(password.length() == 0)
		{
			errors.rejectValue("password", "USER", "Vui lòng nhập mật khẩu !!!");
		}
		
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng nhập thông tin người dùng !!!");
		}
		else
		{
			boolean check = false;
			for(TaiKhoan list: listTK)
			{
				if(email.equals(list.getEmail()) && password.equals(list.getPassword()))
				{
					check = true;
					email1 = email;
					tk1 = list;
					
					System.out.println(tk1.getEmail() + tk1.getPassword() + tenUser);
					if(list.getAdmind_Mod() == 1)
					{
						tenUser = tenNV(email1);
						System.out.println("Quyen dang nhap la admin");
						//return "redirect:profileNV.htm";
						return "redirect:ListNV.htm";
					}
					else if(list.getAdmind_Mod() == 2)
					{
						tenUser = tenNV(email1);
						System.out.println("Nhan Viên");
						return "redirect:ListNV.htm";
					}
					else
					{
						tenUser =  tenKH(email1);
						return "redirect:user/index.htm";
					}
				}
			}
			if ( check == false)
			{
				model.addAttribute("message", "Tên tài khoản hoặc mật khẩu chưa đúng !!!");
			}
		}
				
		return "login";
	}
	
	
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String register(ModelMap model)
	{
		model.addAttribute("USER", new TaiKhoan());
		return "register";
	}
	
	@RequestMapping(value="register", method = RequestMethod.POST)
	public String register(@ModelAttribute("USER") TaiKhoan user ,ModelMap model, BindingResult errors, HttpServletRequest request ) 
	{
		String email = user.getEmail().trim();
		String password = user.getPassword();
		String confirmPw = request.getParameter("password1");
		
	
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		boolean check = true;
		String hql = "FROM TaiKhoan";
		Query query= session.createQuery(hql);
		
		
		List<TaiKhoan> listTK = query.list();
		
		if(email.length() == 0)
		{
			errors.rejectValue("email", "USER", "Vui lòng nhập Email !!!");
		}
		
		if(password.length() == 0)
		{
			errors.rejectValue("password", "USER", "Vui lòng nhập Password !!!");
		}
		
		if(!password.equals(confirmPw))
		{
			errors.rejectValue("password", "USER", "Xác nhận mật khẩu không trùng nhau!!!");
		}
		

		
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
		}
		else
		{
			for(TaiKhoan list: listTK)
			{
				if(list.getEmail().equals(email))
				{
					check = false;
					errors.rejectValue("email", "USER", "Email đã được đăng kí!!!");
					return "register";
				}
			}
			if(check == true)
			{
				
				user.setAdmind_Mod(0);
				email1 = email;
				
				session.save(user);
				t.commit();
				model.addAttribute("message", "Tạo tài khoản thành công!!");
				return "redirect:profileKH.htm";
			}
			
		}
		
		return "register";
	}
	
	
	@RequestMapping(value = "profileKH", method = RequestMethod.GET)
	public String profile(ModelMap model)
	{
		model.addAttribute("KHACHHANG", new KhachHang());
		return "profileKH";
	}
	

	
	@RequestMapping(value = "profileKH", method = RequestMethod.POST)
	public String profile(@ModelAttribute("KHACHHANG") KhachHang kh, ModelMap model, BindingResult errors)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		tk1.setEmail(email1);
		kh.setTaiKhoan(tk1);

		String tenKH = kh.getTenKH();
		String sdt = kh.getSdt();
		String diaChi = kh.getDiaChi();

		
		if(tenKH.length() == 0)
		{
			errors.rejectValue("tenKH", "KHACHHANG", "Vui lòng nhập tên khách hàng !!!");
		}
		
		if(sdt.length() == 0)
		{
			errors.rejectValue("sdt", "KHACHHANG", "Vui lòng nhập số điện thoại!!!");
		}
		
		if(diaChi.length() == 0)
		{
			errors.rejectValue("diaChi", "KHACHHANG", "Vui lòng nhập địa chỉ!!!");
		}
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
		}
		else
		{
			try {

				session.save(kh);
				t.commit();
				model.addAttribute("message", "Thêm thông tin thành công!");
			}catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Thêm thông tin thất bại!");
			}
			finally {
				session.close();
			}
		}
		return "redirect:login.htm";
	}
	
	
	@RequestMapping(value = "changePassword", method = RequestMethod.GET)
	public String changePasswordKH(ModelMap model) {
		model.addAttribute("USER", new TaiKhoan());
		return "changePassword";
	}
	
	@RequestMapping(value = "changePassword", method = RequestMethod.POST)
	public String changPasswordKH(@ModelAttribute("USER") TaiKhoan user, ModelMap model, BindingResult errors, HttpServletRequest request)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String hql = "FROM TaiKhoan";
		Query query= session.createQuery(hql);
		
		List<TaiKhoan> listTK = query.list();

		String confirmPw = request.getParameter("password1");
		if(!user.getPassword().equals(confirmPw))
		{
			errors.rejectValue("password", "USER", "Xác nhận mật khẩu không trùng nhau!!!");
		}
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
		}
		else
		{
			for(TaiKhoan tk: listTK)
			{
				if(tk.getEmail().equals(email1))
				{		
					try {
						tk.setPassword(user.getPassword());
						session.update(tk);
						t.commit();
						model.addAttribute("message", "Cập nhật thành công !!!");
					}catch (Exception e) {
						// TODO: handle exception
						t.rollback();
						model.addAttribute("message", "Cập nhật thất bại !!!");
					}
					finally {
						session.close();
					}
				}
			}
			
		}
		model.addAttribute("tenUser", tenUser);
		return "redirect:login.htm";
	}
	
	@RequestMapping(value = "updateProfileKH", method = RequestMethod.GET)
	public String updateProfileKH(ModelMap model) {
		model.addAttribute("KHACHHANG", new KhachHang());
		return "updateProfileKH";
	}
	
	@RequestMapping(value = "updateProfileKH", method = RequestMethod.POST)
	public String updateProfileKH(@ModelAttribute("KHACHHANG") KhachHang kh, ModelMap model, BindingResult errors)
	{


		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		String tenKH = kh.getTenKH();
		String sdt = kh.getSdt();
		String diaChi = kh.getDiaChi();
		tk1.setEmail(email1);
		kh.setTaiKhoan(tk1);
		int idUser = idUser(tk1.getEmail());
		kh.setMaKH(idUser);
		
		
		
		if(tenKH.length() == 0)
		{
			errors.rejectValue("tenKH", "KHACHHANG", "Vui lòng nhập tên khách hàng !!!");
		}
		
		if(sdt.length() == 0)
		{
			errors.rejectValue("sdt", "KHACHHANG", "Vui lòng nhập số điện thoại!!!");
		}
		
		if(diaChi.length() == 0)
		{
			errors.rejectValue("diaChi", "KHACHHANG", "Vui lòng nhập địa chỉ!!!");
		}
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
		}
		else
		{
			try {
				session.update(kh);
				t.commit();
				model.addAttribute("message", "Cập nhật thành công !!!");
			}catch (Exception e) {
				// TODO: handle exception
				t.rollback();
				model.addAttribute("message", "Cập nhật thất bại !!!");
			}
			finally {
				session.close();
			}
		}
		
		return "redirect:user/index.htm";
	}
	
	@RequestMapping(value = "profileNV", method = RequestMethod.GET)
	public String profileNV(ModelMap model)
	{
		model.addAttribute("NHANVIEN", new NhanVien());
		return "profileNV";
	}
	
	@RequestMapping(value = "profileNV", method = RequestMethod.POST)
	public String profileNV(@ModelAttribute("NHANVIEN") NhanVien nv, ModelMap model, BindingResult errors, HttpServletRequest request) 
	{
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String hql = "FROM TaiKhoan";
		Query query = session.createQuery(hql);
		
		List<TaiKhoan> listTK = query.list();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password1");
		String confirmPassword = request.getParameter("password2");
		String tenNV = nv.getTenNV();
		String diaChi = nv.getDiaChi();
		String sdt = nv.getSdt();
		String gioiTinh = nv.getGioiTinh();
		
		TaiKhoan tk1 = new TaiKhoan();
		tk1.setEmail(email);
		tk1.setPassword(password);
		tk1.setAdmind_Mod(2);
		nv.setTaiKhoan(tk1);
		

		if(email.length() == 0)
		{
			model.addAttribute("message1", "Vui lòng nhập email!!!");
		}
		
		if(password.length() == 0)
		{
			model.addAttribute("message2", "Vui lòng nhập password!!!");
		}
		
		if(!password.equals(confirmPassword))
		{
			model.addAttribute("message3", "Xác nhận mật khẩu không trùng nhau!!!");
		}
		
		
		if(tenNV.length() == 0)
		{
			errors.rejectValue("tenNV", "NHANVIEN", "Vui lòng nhập tên khách hàng !!!");
		}
		
		if(sdt.length() == 0)
		{
			errors.rejectValue("sdt", "NHANVIEN", "Vui lòng nhập số điện thoại!!!");
		}
		
		if(diaChi.length() == 0)
		{
			errors.rejectValue("diaChi", "NHANVIEN", "Vui lòng nhập địa chỉ!!!");
		}
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
		}
		else
		{
			boolean check = true;
			for(TaiKhoan tk: listTK)
			{
				if(email.equals(tk.getEmail()))
				{
					model.addAttribute("message4", "Email đăng kí đã bị trùng!!!");
					check = false;
					return "profileNV";
				}
			}
			if( check == true)
			{
				try {
					session.save(tk1);
					session.save(nv);
					t.commit();
					model.addAttribute("message", "Thêm thông tin thành công!");
				}catch (Exception e) {
					t.rollback();
					model.addAttribute("message", "Thêm thông tin thất bại!");
				}
				finally {
					session.close();
				}
			}

		}
		
		return "redirect:ListNV.htm";
	}
	
	
	@RequestMapping(value = "updateProfileNV", method = RequestMethod.GET)
	public String updateProfileNV(ModelMap model) {
		model.addAttribute("NHANVIEN", new NhanVien());
		return "updateProfileNV";
	}
	
	@RequestMapping(value = "updateProfileNV", method = RequestMethod.POST)
	public String updateProfileKH(@ModelAttribute("NHANVIEN") NhanVien nv, ModelMap model, BindingResult errors)
	{


		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		String tenNV = nv.getTenNV();
		String sdt = nv.getSdt();
		String diaChi = nv.getDiaChi();
		String gioiTinh = nv.getGioiTinh();
		tk1.setEmail(email1);
		nv.setTaiKhoan(tk1);
		int idUser = idUserNV(tk1.getEmail());
		nv.setMaNV(idUser);
		
		
		
		if(tenNV.length() == 0)
		{
			errors.rejectValue("tenNV", "NHANVIEN", "Vui lòng nhập tên khách hàng !!!");
		}
		
		if(sdt.length() == 0)
		{
			errors.rejectValue("sdt", "NHANVIEN", "Vui lòng nhập số điện thoại!!!");
		}
		
		if(diaChi.length() == 0)
		{
			errors.rejectValue("diaChi", "NHANVIEN", "Vui lòng nhập địa chỉ!!!");
		}
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
			
		}
		else
		{
			try {
				session.update(nv);
				t.commit();
				model.addAttribute("message", "Cập nhật thành công !!!");
			}catch (Exception e) {
				// TODO: handle exception
				t.rollback();
				model.addAttribute("message", "Cập nhật thất bại !!!");
			}
			finally {
				session.close();
			}
		}
		
		return "redirect:admin/product/ListSP.htm";
	}
	
	@RequestMapping("ListKH")
	public String listKH(ModelMap model) {
		Session session = factory.getCurrentSession();
		
		String hql1 = "FROM KhachHang";
		String hql2 = "FROM TaiKhoan";
		
		Query query1 = session.createQuery(hql1);
		Query query2 = session.createQuery(hql2);
		
		List<KhachHang> listKH = query1.list();
		List<TaiKhoan> listTK = query2.list();
		
		List<KhachHang> flag = new ArrayList<KhachHang>();
		
		for(TaiKhoan list: listTK)
		{
			if(list.getAdmind_Mod() == 0)
			{
				for(KhachHang list1: listKH)
				{
					if(list1.getTaiKhoan().getEmail().equals(list.getEmail()))
					{
						flag.add(list1);
						
						break;
					}
				}
			}
		}
		model.addAttribute("tenUser", tenUser);
		model.addAttribute("kh", flag);
		return "ListKH";
	}
	
	@RequestMapping("ListNV")
	public String listNV(ModelMap model) {
		Session session = factory.getCurrentSession();
		
		String hql1 = "FROM NhanVien";
		String hql2 = "FROM TaiKhoan";
		
		Query query1 = session.createQuery(hql1);
		Query query2 = session.createQuery(hql2);
		
		List<NhanVien> listNV = query1.list();
		List<TaiKhoan> listTK = query2.list();
		
		List<NhanVien> flag = new ArrayList<NhanVien>();
		
		for(TaiKhoan list: listTK)
		{
			if(list.getAdmind_Mod() == 2)
			{
				for(NhanVien list1: listNV)
				{
					if(list1.getTaiKhoan().getEmail().equals(list.getEmail()))
					{
						flag.add(list1);
						
						break;
					}
				}
			}
		}
		model.addAttribute("tenUser", tenUser);
		model.addAttribute("nv", flag);
		return "ListNV";
	}
	
	@RequestMapping("ListDH")
	public String listDH(ModelMap model) {
		Session session = factory.getCurrentSession();
		
		String hql = "FROM DatHang";
	
		
		Query query = session.createQuery(hql);

		
		List<DatHang> listDH = query.list();


	
		model.addAttribute("tenUser", tenUser);
		model.addAttribute("dh", listDH);
		return "ListDH";
	}
	
	@RequestMapping("ListChiTietDH")
	public String listChiTietDH(ModelMap model) {
		Session session = factory.getCurrentSession();
		
		String hql = "FROM ChiTietDDH";
	
		
		Query query = session.createQuery(hql);

		
		List<ChiTietDDH> listChiTietDH = query.list();


	
		model.addAttribute("tenUser", tenUser);
		model.addAttribute("ctdh", listChiTietDH);
		return "ListChiTietDH";
	}
	
	
	@RequestMapping(value = "{maNV}")
	public String delete(ModelMap model, @PathVariable("maNV") int maNV)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			NhanVien nv = (NhanVien) session.get(NhanVien.class, maNV);
			session.delete(nv);
			
			String email = email(maNV);
			TaiKhoan tk = (TaiKhoan) session.get(TaiKhoan.class, email);
			session.delete(tk);
			
			t.commit();
			model.addAttribute("message", "Xóa thành công");
			
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Xóa thất bại");
		} finally {
			session.close();
		}
		
		return "redirect:ListNV.htm";
	}
	
	

	
	
	
	public int idUser(String email)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query= session.createQuery(hql);
		
		List<KhachHang> listTK = query.list();
		for(KhachHang tk: listTK)
		{
			if(email1.equals(tk.getTaiKhoan().getEmail()))
			{
				return tk.getMaKH();
			}
		}
		
		return -1;
	}
	
	public int idUserNV(String email)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanVien";
		Query query= session.createQuery(hql);
		
		List<NhanVien> listNV = query.list();
		for(NhanVien tk: listNV)
		{
			if(email1.equals(tk.getTaiKhoan().getEmail()))
			{
				return tk.getMaNV();
			}
		}
		
		return -1;
	}
	
	
	
	public String email(int idUser)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanVien";
		Query query= session.createQuery(hql);
		
		List<NhanVien> listNV = query.list();
		for(NhanVien tk: listNV)
		{
			if(tk.getMaNV() == idUser)
			{
				return tk.getTaiKhoan().getEmail();
			}
		}
		
		return "-1";
	}
	
	public String tenKH(String email)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query= session.createQuery(hql);
		
		List<KhachHang> listKH = query.list();
		for(KhachHang list: listKH)
		{
			if(email.equals(list.getTaiKhoan().getEmail()))
			{
				return list.getTenKH();
			}
		}
		
		return "-1";
	}
	
	public String tenNV(String email)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanVien";
		Query query= session.createQuery(hql);
		
		List<NhanVien> listNV = query.list();
		for(NhanVien list: listNV)
		{
			if(email.equals(list.getTaiKhoan().getEmail()))
			{
				return list.getTenNV();
			}
		}
		
		return "-1";
	}
	
	
	@RequestMapping(value = "user/index")
	public String Show(ModelMap model)
	{
	
		model.addAttribute("tenUser", tenUser);
		model.addAttribute("taikhoan", tk1);

		return "user/index";
	}
	
	@RequestMapping(value="user/productSell")
	public String product(ModelMap model)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();

		model.addAttribute("tenUser", tenUser);
		model.addAttribute("taikhoan", tk1);
		model.addAttribute("products", list);
		return "user/productSell";
	}
	
	
	@RequestMapping("user/cart/show")
	public String showCart(ModelMap model, HttpSession session)
	{
		System.out.println("abccc");
		Session s = factory.getCurrentSession();
		String hql = "FROM SanPham";
		Query query = s.createQuery(hql);
		List<SanPham> sanPham = query.list();
		float tongGia = 0;
		
		if(session.getAttribute("cart") == null)
		{
			HashMap<String, Integer> cart = new HashMap<String, Integer>();
			Set<String> keySet = cart.keySet();
			HashMap<String, SanPham> detail = new HashMap<String, SanPham>();
			
			for(String key: keySet)
			{
				for(SanPham list: sanPham)
				{
					if(list.getMaSP().equals(key))
					{
						detail.put(key, list);
						tongGia += detail.get(key).getDonGia() * cart.get(key);
					}
				}
			}
			session.setAttribute("detail", detail);
		}
		else
		{
			HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
			Set<String> keySet = cart.keySet();
			HashMap<String, SanPham> detail = new HashMap<String, SanPham>();
			
			for(String key: keySet)
			{
				for(SanPham list: sanPham)
				{
					if(list.getMaSP().equals(key))
					{
						detail.put(key, list);
						
						tongGia += detail.get(key).getDonGia() * cart.get(key);
					}
				}
			}
			
			session.setAttribute("detail", detail);
		}
		System.out.println(tongGia);
		model.addAttribute("tenUser", tenUser);
		model.addAttribute("tongGia", tongGia);
		
		return "user/cart";
	}
	
	@RequestMapping("user/cart/{idSP}")
	public String cart(@PathVariable("idSP") String idSP, HttpSession session, ModelMap model){
		if(session.getAttribute("cart") == null)
		{
			HashMap<String, Integer> cart = new HashMap<String, Integer>();
			cart.put(idSP, 1);
			session.setAttribute("cart", cart);
		}
		else
		{
			HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
			if(cart.containsKey(idSP))
			{
				cart.replace(idSP, cart.get(idSP)+1);
			}
			else
			{
				cart.put(idSP, 1);
			}
			session.setAttribute("cart", cart);
		}
		
		return "redirect:show.htm";
	}
	
	
	public DatHang setDatHang() {
		DatHang datHang = new DatHang();
		KhachHang kh = new KhachHang();
		int idUserKH = idUser(email1);
		System.out.println("Ma Khach Hang: "+idUserKH);
		kh.setMaKH(idUserKH);
		datHang.setKhachHang(kh);
		
		NhanVien nv = new NhanVien();
		nv.setMaNV(18);
		datHang.setNhanVien(nv);
		datHang.setNgayXuatDon(new Date());
		datHang.setTrangThai(0);
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(datHang);
			t.commit();
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
		}
		finally {
			session.close();
		}
		
		
		return datHang;
	}
	
	@RequestMapping("user/cart/delete/{idSP}.htm")
	public String deleteCart(@PathVariable("idSP") String idSP, HttpSession session, ModelMap model)
	{
			if (session.getAttribute("cart") != null)
			{
				HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
				cart.remove(idSP);
				session.setAttribute("cart", cart);
			}
			return "redirect:/ShopMayTinh/user/cart/show.htm";
	}
	
	
	@RequestMapping("user/checkout")
	public String checkout(ModelMap model, HttpSession session)
	{
		HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
		HashMap<String, SanPham> detail = (HashMap<String, SanPham>) session.getAttribute("detail");
		
		Set<String> setCart = cart.keySet();
		Set<String> setDetail = detail.keySet();
		
		DatHang datHang = new DatHang();
		datHang = setDatHang();
		
		
		
		for(String cart1: setCart)
		{
			for(String detail1: setDetail)
			{
				if(cart1.equals(detail1))
				{
					Session session1 = factory.openSession();
					Transaction t = session1.beginTransaction();
					
					
					ChiTietDDH chiTietDDH = new ChiTietDDH();
					chiTietDDH.setMaDH(datHang.getMaDH());
					chiTietDDH.setSanPham(detail.get(detail1));
					chiTietDDH.setSoLuong(cart.get(cart1));
					
					try {
						session1.save(chiTietDDH);
						t.commit();
						
					} catch (Exception e) {
						// TODO: handle exception
						t.rollback();
					}
					finally {
						session1.close();
					}
					afterCheckOut(detail1, cart.get(cart1));
				}
			}
		}
		
		session.removeAttribute("cart");
		session.removeAttribute("detail");	
		
		return "user/index";
	}
	
	
	
	public void afterCheckOut(String idSP ,int soLuong)
	{
		Session session3 = factory.openSession();
		Transaction t = session3.beginTransaction();
		
		SanPham sanPham = new SanPham();
		
		String hql = "FROM SanPham";
		Query query = session3.createQuery(hql);
		List<SanPham> listSP = query.list();
		
		for(SanPham list: listSP)
		{
			if(list.getMaSP().equals(idSP))
			{

				try {
					sanPham.setMaSP(list.getMaSP());
					sanPham.setTenSP(list.getTenSP());
					sanPham.setSoLuong(list.getSoLuong() - soLuong);
					sanPham.setThuongHieu(list.getThuongHieu());
					
					LoaiSP loaiSP = new LoaiSP();
					loaiSP.setMaLoai(list.getLoaiSP().getMaLoai());
					sanPham.setLoaiSP(loaiSP);
					sanPham.setDonGia(list.getDonGia());
					sanPham.setHinhAnh(list.getHinhAnh());
					
					System.out.println("soLuong: " +sanPham.getSoLuong());
					System.out.println("soLuong: " +sanPham.getMaSP());
					System.out.println("soLuong: " +sanPham.getDonGia());
					System.out.println("soLuong: " +sanPham.getHinhAnh());
					session3.update(sanPham);
					t.commit();
								
				}catch (Exception e) {
					t.rollback();
								
				}
				finally {
					session3.close();
				}
				
			}
		
		}

	}
	
	@RequestMapping("TrangChu")
	public String ShowForm() {
		return "index1";
	}
	
//	@RequestMapping("about")
//	public String about() {
//		return"about";
//	}
//	
//	@RequestMapping("contactus")
//	public String contactus() {
//		return"contact-us";
//	}
	
	@RequestMapping(value = "forget-pass", method = RequestMethod.GET)
	public String forget(ModelMap model)
	{
		model.addAttribute("USER", new TaiKhoan());
		return "forget-pass";
	}
	
	@RequestMapping(value = "forget-pass", method = RequestMethod.POST)
	public String forget(ModelMap model, @ModelAttribute("USER") TaiKhoan user, BindingResult errors)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String hql = "FROM TaiKhoan";
		Query query = session.createQuery(hql);
		List<TaiKhoan> tk = query.list();
		boolean check = false;
		for(TaiKhoan list: tk) {
			if(user.getEmail().equals(list.getEmail())) {
			
				String kq= "999";
				check = true;
				user.setPassword(kq);
				System.out.println(user.getEmail()+ user.getPassword());
				try {
					
					
					session.update(user);
					t.commit();
					
					sendMail(user.getEmail(), user.getPassword());
					model.addAttribute("message", "Đổi thành công!!");
				}
				catch(Exception e) {
					t.rollback();
					model.addAttribute("message", "Đổi thất bại!!");
				}
				finally {
					session.close();
				}
			}
		}
		if(check == false)
		{
			errors.rejectValue("email", "USER", "Email chưa đăng ký!!!");
			return "forget-pass";
		}
		
		return "redirect:login.htm";
	}
	
	
	public boolean sendMail(String mailClient, String pass) {
		boolean check = true;
		String body = " Đây là mật khẩu tạm thời của bạn: " + pass + ". Bạn hãy thay đổi mật khẩu sau khi đăng nhập";
		String from="manhbinh3012@gmail.com";
		
		try{
			MimeMessage mail = mailer.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(from, from);
			helper.setTo(mailClient);
			helper.setReplyTo(from, from);
			helper.setSubject("Thông báo xác nhận đổi mật khẩu!");
			helper.setText(body, true);

			mailer.send(mail);
		}
		catch(Exception e){
			check = false;
		}
		return check;
	}

}
