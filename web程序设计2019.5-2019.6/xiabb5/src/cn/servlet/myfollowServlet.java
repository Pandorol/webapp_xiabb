package cn.servlet;

import cn.dao.IFollowDao;
import cn.dao.impl.FollowDao;
import cn.entity.Userinfo;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class myfollowServlet extends HttpServlet {
	private IFollowDao ifd = new FollowDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String usermail = (String) session.getAttribute("usermail");
		List<Userinfo> myfollows = this.ifd.getfollows(usermail);
		session.setAttribute("myfollows", myfollows);
		resp.sendRedirect("/xiabb5/myfollows.jsp");
	}
}