package model;

public class Account {
	private String name;
	private String pass;
	
	
	
	public Account(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Account [name=" + name + ", pass=" + pass + "]";
	}
	
}
