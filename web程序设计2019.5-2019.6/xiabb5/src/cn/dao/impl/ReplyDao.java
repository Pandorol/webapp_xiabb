package cn.dao.impl;

import cn.dao.IReplyDao;
import cn.entity.Postreplyinfo;
import cn.entity.Replyinfo;
import cn.utils.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReplyDao implements IReplyDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void Save(Replyinfo replyinfo) {
		String sql = "INSERT INTO replyinfo(usermail,username,postid,replycontent) VALUES(?,?,?,?);";

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, replyinfo.getUsermail());
			this.pstmt.setString(2, replyinfo.getUsername());
			this.pstmt.setInt(3, replyinfo.getPostid());
			this.pstmt.setString(4, replyinfo.getReplycontent());
			this.pstmt.executeUpdate();
		} catch (Exception var7) {
			throw new RuntimeException(var7);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}

	}

	public List<Postreplyinfo> getReplylist(int postid) {
		String sql = "select username,replycontent,replytime from replyinfo where postid=?";
		ArrayList postreply = new ArrayList();

		try {
			this.con = JdbcUtil.getConnection();
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setInt(1, postid);
			this.rs = this.pstmt.executeQuery();

			while (this.rs.next()) {
				Postreplyinfo reply = new Postreplyinfo();
				reply.setUsername(this.rs.getString("username"));
				reply.setReplycontent(this.rs.getString("replycontent"));
				reply.setReplydate(this.rs.getTimestamp("replytime"));
				postreply.add(reply);
			}

			ArrayList var6 = postreply;
			return var6;
		} catch (Exception var9) {
			throw new RuntimeException(var9);
		} finally {
			JdbcUtil.closeAll(this.con, this.pstmt, (ResultSet) null);
		}
	}
}