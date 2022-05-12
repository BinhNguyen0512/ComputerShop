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
@Table(name="KHACHHANG")
public class KhachHang {
	
	@Id
	@GeneratedValue
	@Column(name="MAKH")
	private int MaKH;
	
	@Column(name="TENKHACHHANG")
	private String tenKH;
	
	@Column(name="SDT")
	private String sdt;
	
	@Column(name="DIACHI")
	private String diaChi;
	
	
	@OneToOne
	@JoinColumn(name="EMAIL")
	private TaiKhoan taiKhoan;
	
	@OneToMany(mappedBy="khachHang", fetch = FetchType.EAGER)
	private Collection<DatHang> datHang;


	public KhachHang() {
		super();
	}





	public Collection<DatHang> getDatHang() {
		return datHang;
	}





	public void setDatHang(Collection<DatHang> datHang) {
		this.datHang = datHang;
	}





	public KhachHang(int maKH, String tenKH, String sdt, String diaChi, TaiKhoan taiKhoan,
			Collection<DatHang> datHang) {
		super();
		MaKH = maKH;
		this.tenKH = tenKH;
		this.sdt = sdt;
		this.diaChi = diaChi;
		this.taiKhoan = taiKhoan;
		this.datHang = datHang;
	}





	public int getMaKH() {
		return MaKH;
	}


	public void setMaKH(int maKH) {
		MaKH = maKH;
	}


	public String getTenKH() {
		return tenKH;
	}


	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}


	public String getSdt() {
		return sdt;
	}


	public void setSdt(String sdt) {
		this.sdt = sdt;
	}


	public String getDiaChi() {
		return diaChi;
	}


	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}


	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}


	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	
	
	
	
}
