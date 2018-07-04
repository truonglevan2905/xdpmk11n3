package model;

public class PhieuDat {
	private TuaDia tuadia;
	private KhachHang kh;
	private int thuTuDat;
	public PhieuDat() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhieuDat(TuaDia tuadia, KhachHang kh, int thuTuDat) {
		super();
		this.tuadia = tuadia;
		this.kh = kh;
		this.thuTuDat = thuTuDat;
	}
	public TuaDia getTuadia() {
		return tuadia;
	}
	public void setTuadia(TuaDia tuadia) {
		this.tuadia = tuadia;
	}
	public KhachHang getKh() {
		return kh;
	}
	public void setKh(KhachHang kh) {
		this.kh = kh;
	}
	public int getThuTuDat() {
		return thuTuDat;
	}
	public void setThuTuDat(int thuTuDat) {
		this.thuTuDat = thuTuDat;
	}
	@Override
	public String toString() {
		return "PhieuDat [tuadia=" + tuadia + ", kh=" + kh + ", thuTuDat=" + thuTuDat + "]";
	}
	

}
