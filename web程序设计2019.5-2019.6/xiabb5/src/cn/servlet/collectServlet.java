package cn.servlet;

import cn.dao.ICollectionDao;
import cn.dao.impl.CollectionDao;
import cn.entity.Mycollection;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class collectServlet extends HttpServlet {
	private ICollectionDao icd = new CollectionDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getSession().getAttribute("usermail")==null)
		{
		resp.sendRedirect("/xiabb5/login.jsp");
		return;
		}
		
		
		int postid = Integer.parseInt(String.valueOf(req.getSession().getAttribute("postid")));
		String usermail = (String) req.getSession().getAttribute("usermail");
		Mycollection mycollection = new Mycollection(usermail, postid);
		this.icd.save(mycollection);
		resp.sendRedirect("/xiabb5/postinfo.jsp");
	}
}