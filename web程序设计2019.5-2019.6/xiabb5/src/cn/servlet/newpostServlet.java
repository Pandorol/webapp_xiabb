package cn.servlet;

import cn.dao.IPostDao;
import cn.dao.impl.PostDao;
import cn.entity.Postinfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class newpostServlet extends HttpServlet {
	private IPostDao pd = new PostDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usermail = (String) req.getSession().getAttribute("usermail");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		Postinfo postinfo = new Postinfo(usermail, title, content);
		this.pd.Save(postinfo);
		resp.sendRedirect("/xiabb5/homeServlet");
	}
}