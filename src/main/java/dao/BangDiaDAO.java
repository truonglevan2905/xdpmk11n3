package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import model.BangDia;
import model.TuaDia;

public class BangDiaDAO {
	private JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public int thembangdia(BangDia bd) {
		 return template.update("insert into bangdia values('"+bd.getMaDia()+"','"+bd.getTd()+"','"+bd.getTinhTrang()+"')");
	}
	public List<BangDia>getallbangdia(){
		return template.query("select*from bangdia bd join tieude td on bd.maTieuDe=td.maTieuDe", new RowMapper<BangDia>() {

			@Override
			public BangDia mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				BangDia bd=new BangDia();
				bd.setMaDia(rs.getString(1));
				bd.setTd(new TuaDia(rs.getString(5)));
				bd.setTinhTrang(rs.getString(3));
				return bd;
			}
			
		});
	}
	public int xoabangdia(String maDia) {
		return template.update("delete from bangdia where maDia='"+maDia+"'");
	}
	public List<BangDia>getallbangdia1(){
		return template.query("select*from bangdia bd join tieude td on bd.maTieuDe=td.maTieuDe", new RowMapper<BangDia>() {

			@Override
			public BangDia mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				BangDia bd=new BangDia();
				TuaDia fg=new TuaDia(rs.getString(2),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getDouble(9));
				
				bd.setMaDia(rs.getString(1));
				
				bd.setTd(fg);
				bd.setTinhTrang(rs.getString(3));
				return bd;
			}
			
		});
	}
	public List<BangDia>getallbangdia2(String maTieuDe){
		return template.query("select*from bangdia where maTieuDe='"+maTieuDe+"'", new RowMapper<BangDia>() {

			@Override
			public BangDia mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				BangDia bd=new BangDia();
				bd.setMaDia(rs.getString(1));
				bd.setTd(new TuaDia(rs.getString(2)));
				bd.setTinhTrang(rs.getString(3));
				return bd;
			}
			
		});
	}

}
