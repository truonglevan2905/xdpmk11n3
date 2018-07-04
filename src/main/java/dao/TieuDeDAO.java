package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import model.TuaDia;



public class TieuDeDAO {
	JdbcTemplate template;


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		
	}
	public List<TuaDia>getalltuadia(){
		return template.query("select*from tieude", new RowMapper<TuaDia>() {

			@Override
			public TuaDia mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				TuaDia td=new TuaDia();
				td.setMaTieuDe(rs.getString(1));
				td.setTenTieuDe(rs.getString(2));
				td.setLoaiDia(rs.getString(3));
				td.setMota(rs.getString(4));
				td.setThoiGianThue(rs.getInt(5));
				td.setGiaThue(rs.getDouble(6));
				return td;
			}
			
		});
	}
	public String getmaTieuDe(String ten) {
		String sql="select  maTieuDe from tieude where tenTieuDe='"+ten+"'";
		return template.queryForObject(sql,String.class,ten);
	}
	public TuaDia gettieude(String ten) {
		return template.queryForObject("select*from tieude where tenTieuDe=?",new Object[] {ten},new BeanPropertyRowMapper<TuaDia>(TuaDia.class));
		
	}
	public int themtuadia(TuaDia t) {
		return template.update("insert into tieude values('"+t.getMaTieuDe()+"','"+t.getTenTieuDe()+"','"+t.getLoaiDia()+"','"+t.getMota()+"','"+t.getThoiGianThue()+"','"+t.getGiaThue()+"')");
	}
	public int xoatuadia(String matieude) {
		return template.update("delete from tieude where maTieuDe='"+matieude+"'");
	}
	public TuaDia gettuadiabyma(String ma) {
		return template.queryForObject("select*from tieude where maTieuDe=?",new Object[] {ma},new BeanPropertyRowMapper<TuaDia>(TuaDia.class));
	}
	public List<TuaDia>getalltuadiabyld(String phim){
		return template.query("select*from tieude where loaiDia='"+phim+"'", new RowMapper<TuaDia>() {

			@Override
			public TuaDia mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				TuaDia td=new TuaDia();
				td.setMaTieuDe(rs.getString(1));
				td.setTenTieuDe(rs.getString(2));
				td.setLoaiDia(rs.getString(3));
				td.setMota(rs.getString(4));
				td.setThoiGianThue(rs.getInt(5));
				td.setGiaThue(rs.getDouble(6));
				return td;
			}
			
		});
	}
	
}
