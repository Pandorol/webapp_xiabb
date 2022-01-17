package cn.servlet;

import cn.dao.IUserDao;
import cn.dao.impl.UserDao;
import cn.entity.Userinfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginServlet extends HttpServlet {
	private IUserDao ius = new UserDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String usermail = req.getParameter("usermail");
		String password = req.getParameter("password");
		if (this.ius.userExists(usermail, password)) {
			Userinfo userinfo = this.ius.getUserinfo(usermail);
			HttpSession session = req.getSession();
			session.setAttribute("username", userinfo.getName());
			session.setAttribute("usermail", userinfo.getUsermail());
			session.setAttribute("hometown", userinfo.getHometown());
			session.setAttribute("age", userinfo.getAge());
			session.setAttribute("gender", userinfo.getGender());
			resp.sendRedirect("/xiabb5/homeServlet");
		} else {
			resp.sendRedirect("/xiabb5/login.jsp");
		}

	}
}