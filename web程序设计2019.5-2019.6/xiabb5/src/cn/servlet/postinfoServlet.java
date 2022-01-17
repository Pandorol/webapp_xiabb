package cn.servlet;

import cn.dao.IPostDao;
import cn.dao.IReplyDao;
import cn.dao.IUserDao;
import cn.dao.impl.PostDao;
import cn.dao.impl.ReplyDao;
import cn.dao.impl.UserDao;
import cn.entity.Postinfo;
import cn.entity.Postreplyinfo;
import cn.entity.Userinfo;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class postinfoServlet extends HttpServlet {
	private IPostDao ipd = new PostDao();
	private IReplyDao ird = new ReplyDao();
	private IUserDao iud = new UserDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if (req.getParameter("id") != null) {
			String id = req.getParameter("id");
			int postid = Integer.parseInt(String.valueOf(session.getAttribute(id)));
			session.setAttribute("postid", postid);
		}

		int postid;
		if (req.getParameter("postid") != null) {
			postid = Integer.parseInt(req.getParameter("postid"));
			session.setAttribute("postid", postid);
		}

		postid = Integer.parseInt(String.valueOf(session.getAttribute("postid")));
		Postinfo postinfo = this.ipd.getPostinfo(postid);
		session.setAttribute("title", postinfo.getPosttitle());
		session.setAttribute("content", postinfo.getPostcontent());
		String postusermail = postinfo.getUsermail();
		Userinfo postuserinfo = this.iud.getUserinfo(postusermail);
		session.setAttribute("postuserinfo", postuserinfo);
		List<Postreplyinfo> postreplyinfo = this.ird.getReplylist(postid);
		this.getServletContext().setAttribute("replypostid" + postid, postreplyinfo);
		resp.sendRedirect("/xiabb5/postinfo.jsp");
	}
}