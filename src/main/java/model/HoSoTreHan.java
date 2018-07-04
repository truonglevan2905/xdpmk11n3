package model;

import java.util.ArrayList;
import java.util.List;

public class HoSoTreHan {
	private String maHoSo;
	private  KhachHang kh;
	private double phitrahan;
	private int soLuongDiaTre;
	private List<ChiTietTre>cttre=new ArrayList<ChiTietTre>();
	public HoSoTreHan() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HoSoTreHan(String maHoSo, KhachHang kh, double phitrahan, int soLuongDiaTre, List<ChiTietTre> cttre) {
		super();
		this.maHoSo = maHoSo;
		this.kh = kh;
		this.phitrahan = phitrahan;
		this.soLuongDiaTre = soLuongDiaTre;
		this.cttre = cttre;
	}
	public HoSoTreHan(String maHoSo, KhachHang kh, double phitrahan, int soLuongDiaTre) {
		super();
		this.maHoSo = maHoSo;
		this.kh = kh;
		this.phitrahan = phitrahan;
		this.soLuongDiaTre = soLuongDiaTre;
	}
	public String getMaHoSo() {
		return maHoSo;
	}
	public void setMaHoSo(String maHoSo) {
		this.maHoSo = maHoSo;
	}
	public KhachHang getKh() {
		return kh;
	}
	public void setKh(KhachHang kh) {
		this.kh = kh;
	}
	public double getPhitrahan() {
		return phitrahan;
	}
	public void setPhitrahan(double phitrahan) {
		this.phitrahan = phitrahan;
	}
	public int getSoLuongDiaTre() {
		return soLuongDiaTre;
	}
	public void setSoLuongDiaTre(int soLuongDiaTre) {
		this.soLuongDiaTre = soLuongDiaTre;
	}
	public List<ChiTietTre> getCttre() {
		return cttre;
	}
	public void setCttre(List<ChiTietTre> cttre) {
		this.cttre = cttre;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maHoSo == null) ? 0 : maHoSo.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HoSoTreHan other = (HoSoTreHan) obj;
		if (maHoSo == null) {
			if (other.maHoSo != null)
				return false;
		} else if (!maHoSo.equals(other.maHoSo))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "HoSoTreHan [maHoSo=" + maHoSo + ", kh=" + kh + ", phitrahan=" + phitrahan + ", soLuongDiaTre="
				+ soLuongDiaTre + ", cttre=" + cttre + "]";
	}
	

}
