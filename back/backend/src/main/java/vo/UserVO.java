package vo;

public class UserVO {
	private String user_id;
	private String user_password;
	private String setuser_Phone_number;
	
public UserVO() {
	super();
}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getSetuser_Phone_number() {
		return setuser_Phone_number;
	}
	public void setSetuser_Phone_number(String setuser_Phone_number) {
		this.setuser_Phone_number = setuser_Phone_number;
	}

}