package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CTDDH")
@IdClass(ChiTietDDH_Id.class)
public class ChiTietDDH {
	@Id
	@Column(name="MADH")
	private int maDH;
	
	@Id
	@ManyToOne
	@JoinColumn(name="MASP")
	private SanPham sanPham;
	
	@Column(name="SOLUONG")
	private int soLuong;

	public ChiTietDDH() {
		super();
	}

	public ChiTietDDH(int maDH, SanPham sanPham, int soLuong) {
		super();
		this.maDH = maDH;
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}

	public int getMaDH() {
		return maDH;
	}

	public void setMaDH(int maDH) {
		this.maDH = maDH;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	
	
}
