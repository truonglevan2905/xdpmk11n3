package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import model.KhachHang;

public class KhachHangDAO {
 private JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
	this.template = template;
}
 public List<KhachHang>getallkhachhang(){
	 return template.query("select*from khachhang",new RowMapper<KhachHang>() {

		@Override
		public KhachHang mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			KhachHang kh=new KhachHang();
			kh.setMaKH(rs.getString(1));
			kh.setAddress(rs.getString(2));
			kh.setName(rs.getString(3));
			kh.setPhoneNum(rs.getString(4));
			return kh;
		}
		 
	 });
 }
 public int themkhachhang(KhachHang kh) {
	 return template.update("insert into khachhang values('"+kh.getMaKH()+"','"+kh.getAddress()+"','"+kh.getName()+"','"+kh.getPhoneNum()+"')");
 }
 public int suakhachhang(KhachHang kh) {
	 return template.update("update khachhang set address='"+kh.getAddress()+"',name='"+kh.getName()+"',phoneNum='"+kh.getPhoneNum()+"'where maKh='"+kh.getMaKH()+"'");
 }
 public int xoakhachhang(String ma) {
	 return template.update("delete from khachhang where maKh='"+ma+"'");
 }
 public KhachHang getkhachhang(String ma) {
	 return template.queryForObject("select *from khachhang where maKh=?", new Object[] {ma},new BeanPropertyRowMapper<KhachHang>(KhachHang.class));
 }
}
