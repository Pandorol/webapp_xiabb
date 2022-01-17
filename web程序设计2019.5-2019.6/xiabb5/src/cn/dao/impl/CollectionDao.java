package cn.dao.impl;

import cn.dao.ICollectionDao;
import cn.entity.Mycollection;
import cn.entity.Recommendpostinfo;
import cn.utils.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CollectionDao implements ICollectionDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void save(Mycollection mycollection) {
		String sql0 = "select * from mycollection where usermail=? and postid=?;";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql0);
			this.pstmt.setString(1, mycollection.getUsermail());
			this.pstmt.setInt(2, mycollection.getPostid());
			this.rs = this.pstmt.executeQuery();
			if (this.rs.next()) {
				return;
			}
		} catch (Exception var16) {
			throw new RuntimeException(var16);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

		String sql = "INSERT INTO mycollection(usermail,postid) VALUES(?,?);";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, mycollection.getUsermail());
			this.pstmt.setInt(2, mycollection.getPostid());
			this.pstmt.executeUpdate();
		} catch (Exception var14) {
			throw new RuntimeException(var14);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

	}

	public List<Recommendpostinfo> getmycollections(String usermail) {
		String sql = "select postinfo.postid,title,postinfo.content from postinfo,mycollection where postinfo.postid=mycollection.postid and mycollection.usermail=? order by postid desc";
		ArrayList mycollections = new ArrayList();

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, usermail);
			this.rs = this.pstmt.executeQuery();

			while (this.rs.next()) {
				Recommendpostinfo mycollection = new Recommendpostinfo();
				mycollection.setRepostid(this.rs.getInt("postid"));
				mycollection.setReposttitle(this.rs.getString("title"));
				mycollection.setRepostcontent(this.rs.getString("content"));
				mycollections.add(mycollection);
			}

			ArrayList var6 = mycollections;
			return var6;
		} catch (Exception var9) {
			throw new RuntimeException(var9);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}
	}
}