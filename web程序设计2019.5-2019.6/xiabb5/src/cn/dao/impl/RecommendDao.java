package cn.dao.impl;

import cn.dao.IRecommendDao;
import cn.entity.Recommendpostinfo;
import cn.utils.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RecommendDao implements IRecommendDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public Recommendpostinfo[] getRecomFour() {
		String sql = "select postid,title,content from postinfo order by postid desc limit 0,4";
		Recommendpostinfo[] rpi = new Recommendpostinfo[4];

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.rs = this.pstmt.executeQuery();

			for (int i = 0; this.rs.next(); ++i) {
				rpi[i] = new Recommendpostinfo();
				rpi[i].setRepostid(this.rs.getInt("postid"));
				rpi[i].setReposttitle(this.rs.getString("title"));
				rpi[i].setRepostcontent(this.rs.getString("content"));
			}

			Recommendpostinfo[] var5 = rpi;
			return var5;
		} catch (Exception var8) {
			throw new RuntimeException(var8);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}
	}

	public List<Recommendpostinfo> getAllpost() {
		String sql = "select postid,title,content from postinfo order by postid desc";
		ArrayList posts = new ArrayList();

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.rs = this.pstmt.executeQuery();

			while (this.rs.next()) {
				Recommendpostinfo post = new Recommendpostinfo();
				post.setRepostid(this.rs.getInt("postid"));
				post.setReposttitle(this.rs.getString("title"));
				post.setRepostcontent(this.rs.getString("content"));
				posts.add(post);
			}

			ArrayList var5 = posts;
			return var5;
		} catch (Exception var8) {
			throw new RuntimeException(var8);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}
	}

	public List<Recommendpostinfo> getmypost(String usermail) {
		String sql = "select postid,title,content from postinfo where usermail=? order by postid desc ";
		ArrayList posts = new ArrayList();

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, usermail);
			this.rs = this.pstmt.executeQuery();

			while (this.rs.next()) {
				Recommendpostinfo post = new Recommendpostinfo();
				post.setRepostid(this.rs.getInt("postid"));
				post.setReposttitle(this.rs.getString("title"));
				post.setRepostcontent(this.rs.getString("content"));
				posts.add(post);
			}

			ArrayList var6 = posts;
			return var6;
		} catch (Exception var9) {
			throw new RuntimeException(var9);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}
	}
}