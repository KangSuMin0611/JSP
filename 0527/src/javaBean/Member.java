package javaBean;

public class Member {
	
	private String id;
	private String password;
	
	private final static String _id="user";
	private final static String _password="1234";
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
		
	public boolean checkUesr() {
		if(id.equals(_id) && password.equals(_password))
			return true;
		else
			return false;
	}
	
}
