package model;

import java.util.ArrayList;
import java.util.List;

public class KhachHang {
	private String maKH;
	private String address;
	private String name;
	private String phoneNum;
	private List<PhieuThue>phieuthue=new ArrayList<PhieuThue>();
	  private List<PhieuDat>phieudat=new ArrayList<PhieuDat>();
	public KhachHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhachHang(String maKH, String address, String name, String phoneNum, List<PhieuThue> phieuthue,
			List<PhieuDat> phieudat) {
		super();
		this.maKH = maKH;
		this.address = address;
		this.name = name;
		this.phoneNum = phoneNum;
		this.phieuthue = phieuthue;
		this.phieudat = phieudat;
	}
	public KhachHang(String maKH, String address, String name, String phoneNum) {
		super();
		this.maKH = maKH;
		this.address = address;
		this.name = name;
		this.phoneNum = phoneNum;
	}
	public String getMaKH() {
		return maKH;
	}
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public List<PhieuThue> getPhieuthue() {
		return phieuthue;
	}
	public void setPhieuthue(List<PhieuThue> phieuthue) {
		this.phieuthue = phieuthue;
	}
	public List<PhieuDat> getPhieudat() {
		return phieudat;
	}
	public void setPhieudat(List<PhieuDat> phieudat) {
		this.phieudat = phieudat;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maKH == null) ? 0 : maKH.hashCode());
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
		KhachHang other = (KhachHang) obj;
		if (maKH == null) {
			if (other.maKH != null)
				return false;
		} else if (!maKH.equals(other.maKH))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "KhachHang [maKH=" + maKH + ", address=" + address + ", name=" + name + ", phoneNum=" + phoneNum
				+ ", phieuthue=" + phieuthue + ", phieudat=" + phieudat + "]";
	}
	  
	

}
