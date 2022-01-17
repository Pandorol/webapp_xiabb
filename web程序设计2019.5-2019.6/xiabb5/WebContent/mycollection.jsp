<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="cn.entity.Recommendpostinfo,java.util.List"%>
<!DOCTYPE html> <!--全部帖子界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的帖子</title>
  <style>

    .button2 {
      background-color: white;
      color: black;
      border: 2px solid #FF9800;
    }
    .button2:hover {
      background-color: #FF9800;
      color: white;
    }
    a{ text-decoration:none}
  </style>
</head>
<%-- 
<%System.out.println("cc");
if(session.getAttribute("usermail")==null)
	{
	response.sendRedirect("/xiabb5/index.jsp");
	}%>
--%>
<body>

<jsp:include page="head0.jsp"></jsp:include>

<jsp:include page="userinfohead.jsp"></jsp:include>

		
		 <%
			List<Recommendpostinfo> mycollections = (List<Recommendpostinfo>)session.getAttribute("mycollections");
			if(mycollections.size()>0){
			int pagesize=4;
			int pagecount ;
			pagecount = mycollections.size()%pagesize==0 ? mycollections.size()/pagesize : mycollections.size()/pagesize+1;
			int pagenow=1;
			if(request.getParameter("pagenow")!=null)
			{
				pagenow=Integer.parseInt((String)request.getParameter("pagenow"));
			}
			
			if(pagenow<=0){
				pagenow=1;
			}
			if(pagenow>=pagecount){
				pagenow=pagecount;
			}
			
			
	%>
	<%for(int i=0;i<pagesize&&i+(pagenow-1)*4<mycollections.size();i++){ 
		Recommendpostinfo p = mycollections.get((pagenow-1)*4+i);
	String urlp ="postinfoServlet?postid="+p.getRepostid();
	
	int contentsize = p.getRepostcontent().length();
	if(contentsize>20)
	{
		contentsize=20;
	}
	
	%>
	
	
		 <div style="width: 100%;height: 20%;padding-top: 15px;">
            <div style="float:left;"><img src="p3.jpg" style="margin-top: 30%;margin-left:20%;width: 150px;height: 150px;"></div>
            <div style="text-align:center;"><a href=<%=urlp %> style="text-decoration: none;"><h2 style="color: #005097;"><%=p.getReposttitle() %></h2></a></div>
            <div style="margin-left: 20%;margin-right: 10%;"><p style="word-wrap:break-word;">&nbsp;&nbsp;<%=p.getRepostcontent().substring(0, contentsize)+"..." %></p></div>
        </div>
  
    <div style="height: 2px;background-color: #cecece;background-size:cover;margin-left: 30px;margin-right: 30px;margin-top:5px;margin-bottom: 10px;"></div>
	
	
		
		
	<%} %>
	
			<div style="text-align:center;font-size:1.5em;margin-bottom:20px;"><a href="mycollection.jsp?pagenow=1">首页</a>|<a href="mycollection.jsp?pagenow=<%=pagenow-1 %>">上一页</a>|<a href="mycollection.jsp?pagenow=<%=pagenow+1 %>">下一页</a>|<a href="mycollection.jsp?pagenow=<%=pagecount %>">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=pagenow %>/<%=pagecount %></div>

<%} %>
		





<jsp:include page="userinfofooter.jsp"></jsp:include></body>
</body>
</html>
