package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="LOGIN")
public class TaiKhoan {
	@Id
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="ADMIND_MOD")
	private int admind_Mod;
	
	@OneToOne(mappedBy ="taiKhoan", fetch = FetchType.EAGER)
	private NhanVien nhanVien;
	
	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	@OneToOne(mappedBy = "taiKhoan", fetch = FetchType.EAGER)
	private KhachHang khachHang;

	public TaiKhoan() {
		super();
	}

	public TaiKhoan(String email, String password, int admind_Mod, NhanVien nhanVien, KhachHang khachHang) {
		super();
		this.email = email;
		this.password = password;
		this.admind_Mod = admind_Mod;
		this.nhanVien = nhanVien;
		this.khachHang = khachHang;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAdmind_Mod() {
		return admind_Mod;
	}

	public void setAdmind_Mod(int admind_Mod) {
		this.admind_Mod = admind_Mod;
	}



	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}
	
	


	
}
