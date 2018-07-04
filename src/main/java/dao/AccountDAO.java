package dao;

import org.springframework.jdbc.core.JdbcTemplate;

import model.Account;

public class AccountDAO {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int uploadAcc(Account acc) {
		String sql="insert into Account values ('"+acc.getName()+"','"+acc.getPass()+"')";
		return template.update(sql);
	}
}
