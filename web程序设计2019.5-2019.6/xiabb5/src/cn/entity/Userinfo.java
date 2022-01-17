package cn.entity;

public class Userinfo {
	private String usermail;
	private String password;
	private String name;
	private String gender;
	private int age;
	private String hometown;

	public Userinfo(String usermail, String password, String name) {
		this.usermail = usermail;
		this.password = password;
		this.name = name;
		this.gender = "δ֪";
		this.age = 0;
		this.hometown = "δ֪";
	}

	public Userinfo() {
	}

	public Userinfo(String usermail, String password, String name, String gender, int age, String hometown) {
		this.usermail = usermail;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.hometown = hometown;
	}

	public String getUsermail() {
		return this.usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getHometown() {
		return this.hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
}