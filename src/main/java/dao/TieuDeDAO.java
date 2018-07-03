package dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import model.TieuDe;

public class TieuDeDAO {
	JdbcTemplate template;


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		
	}
	
	public List<TieuDe> getAllTieuDe(){
		String sql="select * from tieude";
		return template.query(sql, new BeanPropertyRowMapper(TieuDe.class));
	}
}
