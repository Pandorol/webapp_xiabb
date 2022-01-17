package cn.servlet;

import cn.dao.IUserDao;
import cn.dao.impl.UserDao;
import cn.entity.Userinfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class followinfoServlet extends HttpServlet {
	private IUserDao iud = new UserDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String followusermail = req.getParameter("followusermail");
		Userinfo followuserinfo = this.iud.getUserinfo(followusermail);
		req.getSession().setAttribute("followuserinfo", followuserinfo);
		resp.sendRedirect("/xiabb5/followuserinfo.jsp");
	}
}