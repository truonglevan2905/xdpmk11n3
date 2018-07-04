package model;

import java.util.Date;

public class ChiTietTre {
	private BangDia bd;
	private HoSoTreHan hsth;
	private Date hanTra;
	private Date ngayTra;
	public ChiTietTre() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietTre(BangDia bd, HoSoTreHan hsth, Date hanTra, Date ngayTra) {
		super();
		this.bd = bd;
		this.hsth = hsth;
		this.hanTra = hanTra;
		this.ngayTra = ngayTra;
	}
	public BangDia getBd() {
		return bd;
	}
	public void setBd(BangDia bd) {
		this.bd = bd;
	}
	public HoSoTreHan getHsth() {
		return hsth;
	}
	public void setHsth(HoSoTreHan hsth) {
		this.hsth = hsth;
	}
	public Date getHanTra() {
		return hanTra;
	}
	public void setHanTra(Date hanTra) {
		this.hanTra = hanTra;
	}
	public Date getNgayTra() {
		return ngayTra;
	}
	public void setNgayTra(Date ngayTra) {
		this.ngayTra = ngayTra;
	}
	@Override
	public String toString() {
		return "ChiTietTre [bd=" + bd + ", hsth=" + hsth + ", hanTra=" + hanTra + ", ngayTra=" + ngayTra + "]";
	}
	
	

}
