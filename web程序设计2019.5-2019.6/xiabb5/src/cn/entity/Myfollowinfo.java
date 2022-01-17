package cn.entity;

public class Myfollowinfo {
	private String fromusermail;
	private String tousermail;

	public String getFromusermail() {
		return this.fromusermail;
	}

	public void setFromusermail(String fromusermail) {
		this.fromusermail = fromusermail;
	}

	public String getTousermail() {
		return this.tousermail;
	}

	public void setTousermail(String tousermail) {
		this.tousermail = tousermail;
	}

	public Myfollowinfo(String fromusermail, String tousermail) {
		this.fromusermail = fromusermail;
		this.tousermail = tousermail;
	}

	public Myfollowinfo() {
	}
}