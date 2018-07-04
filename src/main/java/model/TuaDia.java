package model;

import java.util.ArrayList;
import java.util.List;

public class TuaDia {
	private String maTieuDe;
	private String tenTieuDe;
	private String loaiDia;
	private String mota;
	private int thoiGianThue;
	private double giaThue;
	private List<BangDia>bd=new ArrayList<BangDia>();
    private List<PhieuDat>phieudat=new ArrayList<PhieuDat>();
	public TuaDia() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TuaDia(String maTieuDe, String tenTieuDe, String loaiDia, String mota, int thoiGianThue, double giaThue,
			List<BangDia> bd, List<PhieuDat> phieudat) {
		super();
		this.maTieuDe = maTieuDe;
		this.tenTieuDe = tenTieuDe;
		this.loaiDia = loaiDia;
		this.mota = mota;
		this.thoiGianThue = thoiGianThue;
		this.giaThue = giaThue;
		this.bd = bd;
		this.phieudat = phieudat;
	}
	public TuaDia(String maTieuDe, String tenTieuDe, String loaiDia, String mota, int thoiGianThue, double giaThue) {
		super();
		this.maTieuDe = maTieuDe;
		this.tenTieuDe = tenTieuDe;
		this.loaiDia = loaiDia;
		this.mota = mota;
		this.thoiGianThue = thoiGianThue;
		this.giaThue = giaThue;
	}
	
	
	
	
	public TuaDia(String maTieuDe) {
		super();
		this.maTieuDe = maTieuDe;
	}
	public String getMaTieuDe() {
		return maTieuDe;
	}
	public void setMaTieuDe(String maTieuDe) {
		this.maTieuDe = maTieuDe;
	}
	public String getTenTieuDe() {
		return tenTieuDe;
	}
	public void setTenTieuDe(String tenTieuDe) {
		this.tenTieuDe = tenTieuDe;
	}
	public String getLoaiDia() {
		return loaiDia;
	}
	public void setLoaiDia(String loaiDia) {
		this.loaiDia = loaiDia;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public int getThoiGianThue() {
		return thoiGianThue;
	}
	public void setThoiGianThue(int thoiGianThue) {
		this.thoiGianThue = thoiGianThue;
	}
	public double getGiaThue() {
		return giaThue;
	}
	public void setGiaThue(double giaThue) {
		this.giaThue = giaThue;
	}
	public List<BangDia> getBd() {
		return bd;
	}
	public void setBd(List<BangDia> bd) {
		this.bd = bd;
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
		result = prime * result + ((maTieuDe == null) ? 0 : maTieuDe.hashCode());
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
		TuaDia other = (TuaDia) obj;
		if (maTieuDe == null) {
			if (other.maTieuDe != null)
				return false;
		} else if (!maTieuDe.equals(other.maTieuDe))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return maTieuDe;
	}

    
    
}
