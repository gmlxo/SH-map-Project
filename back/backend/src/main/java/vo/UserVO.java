package vo;

public class UserVO {
	private String user_id;
	private String user_profile;
	private String user_password;
	private String user_Phone_number;

	public UserVO() {
		super();
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_profile() {
		return user_profile;
	}

	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_Phone_number() {
		return user_Phone_number;
	}

	public void setUser_Phone_number(String user_Phone_number) {
		this.user_Phone_number = user_Phone_number;
	}

}