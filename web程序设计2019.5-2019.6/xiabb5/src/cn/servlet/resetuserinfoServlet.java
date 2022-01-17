package cn.servlet;

import cn.dao.IUserDao;
import cn.dao.impl.UserDao;
import cn.entity.Userinfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class resetuserinfoServlet extends HttpServlet {
	private IUserDao uls = new UserDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String usermail = (String) req.getSession().getAttribute("usermail");
		String username = req.getParameter("username");
		req.getSession().setAttribute("username", username);
		String gender = req.getParameter("gender");
		req.getSession().setAttribute("gender", gender);
		int age = Integer.parseInt(req.getParameter("age"));
		req.getSession().setAttribute("age", age);
		String hometown = req.getParameter("hometown");
		req.getSession().setAttribute("hometown", hometown);
		Userinfo userinfo = this.uls.getUserinfo(usermail);
		userinfo.setAge(age);
		userinfo.setGender(gender);
		userinfo.setHometown(hometown);
		userinfo.setName(username);
		this.uls.Reset(userinfo);
		resp.sendRedirect("/xiabb5/userinfo.jsp");
	}
}