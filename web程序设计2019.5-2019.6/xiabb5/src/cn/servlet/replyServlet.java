package cn.servlet;

import cn.dao.IReplyDao;
import cn.dao.impl.ReplyDao;
import cn.entity.Postreplyinfo;
import cn.entity.Replyinfo;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class replyServlet extends HttpServlet {
	private IReplyDao ird = new ReplyDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String replycontent = req.getParameter("replycontent");
		HttpSession session = req.getSession();
		String usermail = (String) session.getAttribute("usermail");
		String username = (String) session.getAttribute("username");
		int postid = Integer.parseInt(String.valueOf(session.getAttribute("postid")));
		Replyinfo replyinfo = new Replyinfo(usermail, username, postid, replycontent);
		this.ird.Save(replyinfo);
		List<Postreplyinfo> postreplyinfo = this.ird.getReplylist(postid);
		this.getServletContext().setAttribute("replypostid" + postid, postreplyinfo);
		resp.sendRedirect("/xiabb5/postinfo.jsp");
	}
}