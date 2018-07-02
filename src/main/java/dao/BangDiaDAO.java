package dao;

import org.springframework.jdbc.core.JdbcTemplate;

public class BangDiaDAO {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
}
