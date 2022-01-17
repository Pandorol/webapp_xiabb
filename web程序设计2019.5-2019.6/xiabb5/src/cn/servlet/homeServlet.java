package cn.servlet;

import cn.dao.IRecommendDao;
import cn.dao.impl.RecommendDao;
import cn.entity.Recommendpostinfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class homeServlet extends HttpServlet {
	private IRecommendDao irp = new RecommendDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Recommendpostinfo[] recommendpostinfo = this.irp.getRecomFour();
		HttpSession session = req.getSession();

		for (int i = 0; i < 4; ++i) {
			session.setAttribute("postid" + i, recommendpostinfo[i].getRepostid());
			session.setAttribute("title" + i, recommendpostinfo[i].getReposttitle());
			session.setAttribute("content"+i,recommendpostinfo[i].getRepostcontent() );
		}

		resp.sendRedirect("/xiabb5/home.jsp");
	}
}