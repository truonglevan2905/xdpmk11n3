package model;

import java.util.Date;

public class PhieuThue {
	private KhachHang kh;
	private BangDia bd;
	private Date ngayThue;
	public PhieuThue() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhieuThue(KhachHang kh, BangDia bd, Date ngayThue) {
		super();
		this.kh = kh;
		this.bd = bd;
		this.ngayThue = ngayThue;
	}
	public KhachHang getKh() {
		return kh;
	}
	public void setKh(KhachHang kh) {
		this.kh = kh;
	}
	public BangDia getBd() {
		return bd;
	}
	public void setBd(BangDia bd) {
		this.bd = bd;
	}
	public Date getNgayThue() {
		return ngayThue;
	}
	public void setNgayThue(Date ngayThue) {
		this.ngayThue = ngayThue;
	}
	@Override
	public String toString() {
		return "PhieuThue [kh=" + kh + ", bd=" + bd + ", ngayThue=" + ngayThue + "]";
	}
	
	

}
