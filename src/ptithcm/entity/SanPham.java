package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "SANPHAM")
public class SanPham {
	
	
	@Id
	@Column(name ="MASP")
	private String  maSP;
	
	@Column(name = "TENSP")
	private String tenSP;
	
	@Column(name = "SOLUONG")
	private int soLuong;
	
	@Column(name = "THUONGHIEU")
	private String thuongHieu;
	
	@Column(name = "DONGIA")
	private Float donGia;
	
	@Column(name = "HINHANH")
	private String hinhAnh;
	
	@ManyToOne
	@JoinColumn(name = "MALOAI")
	private LoaiSP loaiSP;
	
	@OneToMany(mappedBy="sanPham",fetch=FetchType.EAGER)
	private Collection<ChiTietDDH> chitiet;
	

	public SanPham() {
		super();
	}

	

	public Collection<ChiTietDDH> getChitiet() {
		return chitiet;
	}



	public void setChitiet(Collection<ChiTietDDH> chitiet) {
		this.chitiet = chitiet;
	}



	public SanPham(String maSP, String tenSP, int soLuong, String thuongHieu, Float donGia, String hinhAnh,
			LoaiSP loaiSP, Collection<ChiTietDDH> chitiet) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.soLuong = soLuong;
		this.thuongHieu = thuongHieu;
		this.donGia = donGia;
		this.hinhAnh = hinhAnh;
		this.loaiSP = loaiSP;
		this.chitiet = chitiet;
	}



	public String getMaSP() {
		return maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getThuongHieu() {
		return thuongHieu;
	}

	public void setThuongHieu(String thuongHieu) {
		this.thuongHieu = thuongHieu;
	}

	public Float getDonGia() {
		return donGia;
	}

	public void setDonGia(Float donGia) {
		this.donGia = donGia;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public LoaiSP getLoaiSP() {
		return loaiSP;
	}

	public void setLoaiSP(LoaiSP loaiSP) {
		this.loaiSP = loaiSP;
	}
	
	
	
}
