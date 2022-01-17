package cn.servlet;

import cn.dao.ICollectionDao;
import cn.dao.impl.CollectionDao;
import cn.entity.Recommendpostinfo;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class mycollectionsServlet extends HttpServlet {
	private ICollectionDao icd = new CollectionDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String usermail = (String) session.getAttribute("usermail");
		List<Recommendpostinfo> mycollections = this.icd.getmycollections(usermail);
		session.setAttribute("mycollections", mycollections);
		resp.sendRedirect("/xiabb5/mycollection.jsp");
	}
}