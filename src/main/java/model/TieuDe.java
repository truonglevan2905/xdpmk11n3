package model;

public class TieuDe {
	private String maTieuDe;
	private String tenTieuDe;
	private String loaiDia;
	private String moTa;
	private int thoiGianThue;
	private double giaThue;
	public TieuDe() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TieuDe(String maTieuDe, String tenTieuDe, String loaiDia, String moTa, int thoiGianThue, double giaThue) {
		super();
		this.maTieuDe = maTieuDe;
		this.tenTieuDe = tenTieuDe;
		this.loaiDia = loaiDia;
		this.moTa = moTa;
		this.thoiGianThue = thoiGianThue;
		this.giaThue = giaThue;
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
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
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
	
}
