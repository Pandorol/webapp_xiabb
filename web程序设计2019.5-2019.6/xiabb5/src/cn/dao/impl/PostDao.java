package cn.dao.impl;

import cn.dao.IPostDao;
import cn.entity.Postinfo;
import cn.utils.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PostDao implements IPostDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void Save(Postinfo postinfo) {
		String sql = "INSERT INTO postinfo(usermail,title,content) VALUES(?,?,?);";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, postinfo.getUsermail());
			this.pstmt.setString(2, postinfo.getPosttitle());
			this.pstmt.setString(3, postinfo.getPostcontent());
			this.pstmt.executeUpdate();
		} catch (Exception var7) {
			throw new RuntimeException(var7);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

	}

	public Postinfo getPostinfo(int postid) {
		String sql = "select * from postinfo where postid=?";
		Postinfo pi = null;

		Postinfo var6;
		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setInt(1, postid);
			this.rs = this.pstmt.executeQuery();
			if (this.rs.next()) {
				pi = new Postinfo();
				pi.setPostid(this.rs.getInt("postid"));
				pi.setUsermail(this.rs.getString("usermail"));
				pi.setPosttitle(this.rs.getString("title"));
				pi.setPostcontent(this.rs.getString("content"));
				pi.setPostdate(this.rs.getDate("posttime"));
			}

			var6 = pi;
		} catch (Exception var9) {
			throw new RuntimeException(var9);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

		return var6;
	}
}