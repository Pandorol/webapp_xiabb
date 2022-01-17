package cn.servlet;

import cn.dao.IRecommendDao;
import cn.dao.impl.RecommendDao;
import cn.entity.Recommendpostinfo;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class allpostServlet extends HttpServlet {
	private IRecommendDao ird = new RecommendDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Recommendpostinfo> posts = this.ird.getAllpost();
		this.getServletContext().setAttribute("allpost", posts);
		resp.sendRedirect("/xiabb5/allpost.jsp");
	}
}