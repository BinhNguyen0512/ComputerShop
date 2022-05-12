package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="NHANVIEN")
public class NhanVien {
	
	@Id
	@GeneratedValue
	@Column(name="MANV")
	private int MaNV;
	
	@Column(name="TENNV")
	private String tenNV;
	
	@Column(name="GIOITINH")
	private String gioiTinh;
	
	@Column(name="DIACHI")
	private String diaChi;
	
	@Column(name="SDT")
	private String sdt;
	
	@OneToMany(mappedBy="nhanVien", fetch = FetchType.EAGER)
	private Collection<DatHang> datHang;
	
	
	@OneToOne
	@JoinColumn(name="EMAIL")
	private TaiKhoan taiKhoan;

	public NhanVien(int maNV, String tenNV, String gioiTinh, String diaChi, String sdt, Collection<DatHang> datHang,
			TaiKhoan taiKhoan) {
		super();
		MaNV = maNV;
		this.tenNV = tenNV;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
		this.sdt = sdt;
		this.datHang = datHang;
		this.taiKhoan = taiKhoan;
	}



	public NhanVien() {
		super();
	}

	

	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}



	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}





	public Collection<DatHang> getDatHang() {
		return datHang;
	}



	public void setDatHang(Collection<DatHang> datHang) {
		this.datHang = datHang;
	}



	public int getMaNV() {
		return MaNV;
	}

	public void setMaNV(int maNV) {
		MaNV = maNV;
	}

	public String getTenNV() {
		return tenNV;
	}

	public void setTenNV(String tenNV) {
		this.tenNV = tenNV;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}




	
	

}
