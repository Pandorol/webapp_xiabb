package cn.servlet;

import cn.dao.IFollowDao;
import cn.dao.impl.FollowDao;
import cn.entity.Myfollowinfo;
import cn.entity.Userinfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class followServlet extends HttpServlet {
	private IFollowDao ifd = new FollowDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		if(req.getSession().getAttribute("usermail")==null)
		{
		resp.sendRedirect("/xiabb5/login.jsp");
		return;
		}
		String fromusermail = (String) req.getSession().getAttribute("usermail");
		Userinfo postuserinfo = (Userinfo) req.getSession().getAttribute("postuserinfo");
		String tousermail = postuserinfo.getUsermail();
		Myfollowinfo myfollow = new Myfollowinfo(fromusermail, tousermail);
		this.ifd.save(myfollow);
		resp.sendRedirect("/xiabb5/postuserinfo.jsp");
	}
}