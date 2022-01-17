package cn.dao.impl;

import cn.dao.IFollowDao;
import cn.entity.Myfollowinfo;
import cn.entity.Userinfo;
import cn.utils.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FollowDao implements IFollowDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void save(Myfollowinfo myfollowinfo) {
		String sql0 = "select * from myfollow where fromusermail=? and tousermail=?;";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql0);
			this.pstmt.setString(1, myfollowinfo.getFromusermail());
			this.pstmt.setString(2, myfollowinfo.getTousermail());
			this.rs = this.pstmt.executeQuery();
			if (this.rs.next()) {
				return;
			}
		} catch (Exception var16) {
			throw new RuntimeException(var16);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

		String sql = "INSERT INTO myfollow(fromusermail,tousermail) VALUES(?,?);";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, myfollowinfo.getFromusermail());
			this.pstmt.setString(2, myfollowinfo.getTousermail());
			this.pstmt.executeUpdate();
		} catch (Exception var14) {
			throw new RuntimeException(var14);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

	}

	public List<Userinfo> getfollows(String usermail) {
		String sql = "select usermail,name,gender,age,hometown from userinfo,myfollow where userinfo.usermail=myfollow.tousermail and fromusermail=?";
		ArrayList myfollows = new ArrayList();

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, usermail);
			this.rs = this.pstmt.executeQuery();

			while (this.rs.next()) {
				Userinfo myfollow = new Userinfo();
				myfollow.setUsermail(this.rs.getString("usermail"));
				myfollow.setName(this.rs.getString("name"));
				myfollow.setGender(this.rs.getString("gender"));
				myfollow.setAge(this.rs.getInt("age"));
				myfollow.setHometown(this.rs.getString("hometown"));
				myfollows.add(myfollow);
			}

			ArrayList var6 = myfollows;
			return var6;
		} catch (Exception var9) {
			throw new RuntimeException(var9);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}
	}
}