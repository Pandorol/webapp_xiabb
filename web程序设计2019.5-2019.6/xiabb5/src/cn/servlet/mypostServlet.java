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
import javax.servlet.http.HttpSession;

public class mypostServlet extends HttpServlet {
	private IRecommendDao ird = new RecommendDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String usermail = (String) session.getAttribute("usermail");
		List<Recommendpostinfo> myposts = this.ird.getmypost(usermail);
		session.setAttribute("myposts", myposts);
		resp.sendRedirect("/xiabb5/myposts.jsp");
	}
}