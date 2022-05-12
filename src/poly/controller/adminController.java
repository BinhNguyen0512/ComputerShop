package poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.KhachHang;
import ptithcm.entity.LoaiSP;
import ptithcm.entity.SanPham;


@Controller
@Transactional
@RequestMapping("/ShopMayTinh/")
public class adminController {

	@Autowired
	SessionFactory factory;
	
	@Autowired
	javax.servlet.ServletContext context;
	
	@RequestMapping("admin/typeProduct/ListLoaiSP")
	public String listLoaiSP(ModelMap model) {
		Session session = factory.getCurrentSession();
		
		String hql = "FROM LoaiSP";
		
		Query query = session.createQuery(hql);

		List<LoaiSP> listLoaiSP = query.list();

		model.addAttribute("listLoaiSP", listLoaiSP);

		return "admin/typeProduct/ListLoaiSP";
	}
	
	@RequestMapping(value = "admin/typeProduct/insert", method = RequestMethod.GET)
	public String insert(ModelMap model)
	{
		model.addAttribute("LOAISP", new LoaiSP());
		return "admin/typeProduct/insert";
	}
	
	
	
	

	
	@RequestMapping(value = "admin/typeProduct/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute("LOAISP") LoaiSP loaiSP, ModelMap model, BindingResult errors)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		String maLoai = loaiSP.getMaLoai().trim();
		String tenLoai = loaiSP.getTenLoai();
		
		String hql = "FROM LoaiSP";
		
		Query query = session.createQuery(hql);

		List<LoaiSP> listLoaiSP = query.list();
		boolean check = true;
		

		
		
		if(maLoai.length() == 0)
		{
			errors.rejectValue("maLoai", "LOAISP", "Vui lòng nhập mã loại !!!");
			
		}
		
		if(tenLoai.length() == 0)
		{
			errors.rejectValue("tenLoai", "LOAISP", "Vui lòng nhập tên loại!!!");
			
		}
		
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
			return "admin/typeProduct/insert";
		}
		else
		{
				System.out.println("MaLoai: "+maLoai);
				for(LoaiSP list: listLoaiSP)
				{
					System.out.println("list: "+list.getMaLoai());
					
					if(list.getMaLoai().equals(maLoai))
					{
						check = false;
						errors.rejectValue("maLoai", "LOAISP", "Mã loại đã bị trùng!!!");
						return "admin/typeProduct/insert";
					}
				}
				
				if( check == true)
				{
					try {
						session.save(loaiSP);
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
		return "redirect:ListLoaiSP.htm";
	}
	
	
	@RequestMapping(value = "admin/typeProduct/update/{maLoai}", method = RequestMethod.GET)
	public String update(ModelMap model,@PathVariable("maLoai") String maLoai)
	{
		model.addAttribute("LOAISP", new LoaiSP());
		return "admin/typeProduct/update";
	}
	

	
	@RequestMapping(value = "admin/typeProduct/update/{maLoai}", method = RequestMethod.POST)
	public String update(@ModelAttribute("LOAISP") LoaiSP loaiSP, ModelMap model, BindingResult errors)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		String tenLoai = loaiSP.getTenLoai();

		
		loaiSP.setMaLoai(loaiSP.getMaLoai().trim());
		loaiSP.setTenLoai(tenLoai);
		if(tenLoai.length() == 0)
		{
			errors.rejectValue("tenLoai", "LOAISP", "Vui lòng nhập tên loại!!!");
			
		}
		
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
			return "admin/typeProduct/update";
		}
		else
		{

					try {
						
						session.update(loaiSP);
						t.commit();
						model.addAttribute("message", "Sửa thông tin thành công!");
					}catch (Exception e) {
						t.rollback();
						model.addAttribute("message", "Sửa thông tin thất bại!");
					}
					finally {
						session.close();
					}
				
			
		}
		return "redirect:/ShopMayTinh/admin/typeProduct/ListLoaiSP.htm";
	}
	
	@RequestMapping(value = "admin/typeProduct/{maLoai}")
	public String delete(ModelMap model, @PathVariable("maLoai") String maLoai)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			LoaiSP loaiSP = (LoaiSP) session.get(LoaiSP.class, maLoai);
			session.delete(loaiSP);

			t.commit();
			model.addAttribute("message", "Xóa thành công");
			
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Xóa thất bại");
		} finally {
			session.close();
		}
		
		return "redirect:ListLoaiSP.htm";
	}
	
	@RequestMapping("admin/product/ListSP")
	public String listSP(ModelMap model) {
		Session session = factory.getCurrentSession();
		
		String hql = "FROM SanPham";
		
		Query query = session.createQuery(hql);

		List<SanPham> listSP = query.list();

		model.addAttribute("listSP", listSP);
		return "admin/product/ListSP";
	}
	
	
	@RequestMapping(value = "admin/product/insert", method = RequestMethod.GET)
	public String insertSP(ModelMap model)
	{
		model.addAttribute("SANPHAM", new SanPham());
		return "admin/product/insert";
	}
	
	
	
	

	
	@RequestMapping(value = "admin/product/insert", method = RequestMethod.POST)
	public String insertSP(@ModelAttribute("SANPHAM") SanPham sanPham, ModelMap model, BindingResult errors,  HttpServletRequest request)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		String hql = "FROM SanPham";
		Query query = session.createQuery(hql);
		String maLoai = request.getParameter("maLoai");
		LoaiSP loaiSP = new LoaiSP();
		loaiSP.setMaLoai(maLoai);
		sanPham.setLoaiSP(loaiSP);
		List<SanPham> listSP = query.list();
		boolean check = true;
		
		if(errors.hasErrors())
		{
			
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
			return "admin/product/insert";
		}
		else
		{
				for(SanPham list: listSP)
				{
					
					if(list.getMaSP().equals(sanPham.getMaSP().trim()))
					{
						System.out.println("2");
						check = false;
						errors.rejectValue("maSP", "SanPham", "Mã sản phẩm đã bị trùng!!!");
						return "admin/product/insert";
					}
				}
				
				if( check == true)
				{
					try {
						session.save(sanPham);
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
		
		
		return "redirect:ListSP.htm";
	}
	
	
	@RequestMapping(value = "admin/product/update/{maSP}", method = RequestMethod.GET)
	public String updateSP(ModelMap model,@PathVariable("maSP") String maSP)
	{
		model.addAttribute("SANPHAM", new SanPham());
		return "admin/product/update";
	}
	
	@RequestMapping(value = "admin/product/update/{maSP}", method = RequestMethod.POST)
	public String updateSP(@ModelAttribute("SANPHAM") SanPham sanPham, ModelMap model, BindingResult errors, HttpServletRequest request)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		String maSP = sanPham.getMaSP().trim();
		String tenSP = sanPham.getTenSP();
		int soLuong = sanPham.getSoLuong();
		String thuongHieu = sanPham.getThuongHieu();
		String maLoai = request.getParameter("maLoai");
		float donGia = sanPham.getDonGia();
		String hinhAnh = sanPham.getHinhAnh();
		
		
		sanPham.setMaSP(maSP);
		sanPham.setTenSP(tenSP);
		sanPham.setSoLuong(soLuong);
		sanPham.setThuongHieu(thuongHieu);
		LoaiSP loaiSP = new LoaiSP();
		loaiSP.setMaLoai(maLoai);
		sanPham.setLoaiSP(loaiSP);
		sanPham.setDonGia(donGia);
		sanPham.setHinhAnh(hinhAnh);
	
		
		if(errors.hasErrors())
		{
			model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!!!");
			return "admin/product/update";
		}
		else
		{

					try {
						
						session.update(sanPham);
						t.commit();
						model.addAttribute("message", "Sửa thông tin thành công!");
					}catch (Exception e) {
						t.rollback();
						model.addAttribute("message", "Sửa thông tin thất bại!");
					}
					finally {
						session.close();
					}
				
			
		}
		return "redirect:/ShopMayTinh/admin/product/ListSP.htm";
	}
	
	
	@RequestMapping(value = "admin/product/{maSP}")
	public String deleteSP(ModelMap model, @PathVariable("maSP") String maSP)
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			SanPham sanPham = (SanPham) session.get(SanPham.class, maSP);
			session.delete(sanPham);

			t.commit();
			model.addAttribute("message", "Xóa thành công");
			
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Xóa thất bại");
		} finally {
			session.close();
		}
		
		return "redirect:/ShopMayTinh/admin/product/ListSP.htm";
	}
	
	
	

}