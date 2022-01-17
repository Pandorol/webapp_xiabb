package cn.dao.impl;

import cn.dao.IUserDao;
import cn.entity.Userinfo;
import cn.utils.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao implements IUserDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void Save(Userinfo userinfo) {
		String sql = "INSERT INTO userinfo(usermail,password,name,gender,age,hometown) VALUES(?,?,?,?,?,?);";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, userinfo.getUsermail());
			this.pstmt.setString(2, userinfo.getPassword());
			this.pstmt.setString(3, userinfo.getName());
			this.pstmt.setString(4, userinfo.getGender());
			this.pstmt.setInt(5, userinfo.getAge());
			this.pstmt.setString(6, userinfo.getHometown());
			this.pstmt.executeUpdate();
		} catch (Exception var7) {
			throw new RuntimeException(var7);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

	}

	public Userinfo getUserinfo(String usermail) {
		String sql = "select * from userinfo where usermail=?";
		Userinfo us = null;

		Userinfo var6;
		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, usermail);
			this.rs = this.pstmt.executeQuery();
			if (this.rs.next()) {
				us = new Userinfo();
				us.setUsermail(this.rs.getString("usermail"));
				us.setPassword(this.rs.getString("password"));
				us.setName(this.rs.getString("name"));
				us.setGender(this.rs.getString("gender"));
				us.setAge(this.rs.getInt("age"));
				us.setHometown(this.rs.getString("hometown"));
			}

			var6 = us;
		} catch (Exception var9) {
			throw new RuntimeException(var9);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

		return var6;
	}

	public boolean userExists(String usermail, String password) {
		String sql = "select usermail,password from userinfo where usermail=? and password = ?";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, usermail);
			this.pstmt.setString(2, password);
			this.rs = this.pstmt.executeQuery();
			if (!this.rs.next()) {
				return false;
			}
		} catch (SQLException var8) {
			throw new RuntimeException(var8);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, this.rs);
		}

		return true;
	}

	public void Reset(Userinfo userinfo) {
		String sql = "update userinfo set name='" + userinfo.getName() + "',gender='" + userinfo.getGender() + "',age="
				+ userinfo.getAge() + ",hometown='" + userinfo.getHometown() + "' where usermail='"
				+ userinfo.getUsermail() + "'";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.executeUpdate();
		} catch (Exception var7) {
			throw new RuntimeException(var7);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

	}

	public boolean userExists(String usermail) {
		String sql = "select * from userinfo where usermail=?";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, usermail);
			this.rs = this.pstmt.executeQuery();
			if (this.rs.next()) {
				return true;
			}
		} catch (SQLException var7) {
			throw new RuntimeException(var7);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, this.rs);
		}

		return false;
	}
}