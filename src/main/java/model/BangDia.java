package model;

import java.util.ArrayList;
import java.util.List;

public class BangDia {
 private String maDia;
 private TuaDia td;
 private String tinhTrang;
 private List<ChiTietTre>cttre=new ArrayList<ChiTietTre>();
 private List<PhieuThue>phieuthue=new ArrayList<PhieuThue>();
public BangDia() {
	super();
	// TODO Auto-generated constructor stub
}
public BangDia(String maDia, TuaDia td, String tinhTrang, List<ChiTietTre> cttre, List<PhieuThue> phieuthue) {
	super();
	this.maDia = maDia;
	this.td = td;
	this.tinhTrang = tinhTrang;
	this.cttre = cttre;
	this.phieuthue = phieuthue;
}
public BangDia(String maDia, TuaDia td, String tinhTrang) {
	super();
	this.maDia = maDia;
	this.td = td;
	this.tinhTrang = tinhTrang;
}
public String getMaDia() {
	return maDia;
}
public void setMaDia(String maDia) {
	this.maDia = maDia;
}
public TuaDia getTd() {
	return td;
}
public void setTd(TuaDia td) {
	this.td = td;
}
public String getTinhTrang() {
	return tinhTrang;
}
public void setTinhTrang(String tinhTrang) {
	this.tinhTrang = tinhTrang;
}
public List<ChiTietTre> getCttre() {
	return cttre;
}
public void setCttre(List<ChiTietTre> cttre) {
	this.cttre = cttre;
}
public List<PhieuThue> getPhieuthue() {
	return phieuthue;
}
public void setPhieuthue(List<PhieuThue> phieuthue) {
	this.phieuthue = phieuthue;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((maDia == null) ? 0 : maDia.hashCode());
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
	BangDia other = (BangDia) obj;
	if (maDia == null) {
		if (other.maDia != null)
			return false;
	} else if (!maDia.equals(other.maDia))
		return false;
	return true;
}
@Override
public String toString() {
	return "BangDia [maDia=" + maDia + ", td=" + td + ", tinhTrang=" + tinhTrang + ", cttre=" + cttre + ", phieuthue="
			+ phieuthue + "]";
}
 
}
