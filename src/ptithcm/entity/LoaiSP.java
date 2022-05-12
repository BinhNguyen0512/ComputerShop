package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;




@Entity
@Table(name = "LOAISP")
public class LoaiSP {
	
	@Id
	@Column(name = "MALOAI")
	private String maLoai;
	
	@Column(name= "TENLOAI")
	private String tenLoai;
	
	@OneToMany(mappedBy = "loaiSP", fetch = FetchType.EAGER)
	private Collection<SanPham> sanPham;

	public LoaiSP() {
		super();
	}

	public LoaiSP(String maLoai, String tenLoai, Collection<SanPham> sanPham) {
		super();
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
		this.sanPham = sanPham;
	}

	public String getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public Collection<SanPham> getSanPham() {
		return sanPham;
	}

	public void setSanPham(Collection<SanPham> sanPham) {
		this.sanPham = sanPham;
	}
	
	
	

}
