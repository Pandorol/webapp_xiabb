package cn.servlet;

import cn.dao.IUserDao;
import cn.dao.impl.UserDao;
import cn.entity.Userinfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerServlet extends HttpServlet {
	IUserDao iud = new UserDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String usermail = req.getParameter("usermail");
		String password = req.getParameter("password");
		String username = req.getParameter("username");
		if (this.iud.userExists(usermail)) {
			resp.getWriter().write("用户已存在");
		} else {
			Userinfo userinfo = new Userinfo(usermail, password, username);
			this.iud.Save(userinfo);
			resp.sendRedirect("/xiabb5/login.jsp");
		}

	}
}