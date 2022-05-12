package ptithcm.entity;

import java.io.Serializable;

public class ChiTietDDH_Id implements Serializable  {
	private int maDH;
	
	private SanPham sanPham;

	public ChiTietDDH_Id() {
		super();
	}

	public ChiTietDDH_Id(int maDH, SanPham sanPham) {
		super();
		this.maDH = maDH;
		this.sanPham = sanPham;
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
	
	
}
