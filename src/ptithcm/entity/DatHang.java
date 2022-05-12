package ptithcm.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="DATHANG")
public class DatHang {
	
	@Id
	@GeneratedValue
	@Column(name="MADH")
	private int maDH;
	
	
	@Column(name="NGAYXUATDON")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date ngayXuatDon;
	
	@ManyToOne
	@JoinColumn(name="MAKH")
	private KhachHang khachHang;
	
	@ManyToOne
	@JoinColumn(name="MANV")
	private NhanVien nhanVien;
	
	
	
	@Column(name="TRANGTHAI")
	private int trangThai;



	public int getMaDH() {
		return maDH;
	}



	public void setMaDH(int maDH) {
		this.maDH = maDH;
	}



	public Date getNgayXuatDon() {
		return ngayXuatDon;
	}



	public void setNgayXuatDon(Date ngayXuatDon) {
		this.ngayXuatDon = ngayXuatDon;
	}



	public KhachHang getKhachHang() {
		return khachHang;
	}



	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}



	public NhanVien getNhanVien() {
		return nhanVien;
	}



	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}



	public int getTrangThai() {
		return trangThai;
	}



	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}



	public DatHang() {
		super();
	}



	public DatHang(int maDH, Date ngayXuatDon, KhachHang khachHang, NhanVien nhanVien, int trangThai) {
		super();
		this.maDH = maDH;
		this.ngayXuatDon = ngayXuatDon;
		this.khachHang = khachHang;
		this.nhanVien = nhanVien;
		this.trangThai = trangThai;
	}
	
}
