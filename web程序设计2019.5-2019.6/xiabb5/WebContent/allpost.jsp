<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="cn.entity.Recommendpostinfo,java.util.List"%>
<!DOCTYPE html> <!--全部帖子界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全部帖子</title>
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
<%if(session.getAttribute("usermail")==null)
	{
	response.sendRedirect("/xiabb5/index.jsp");
	}%>--%>
<body>

<jsp:include page="head0.jsp"></jsp:include>
<p class="home_title" style="margin-top: 50px;font-size: 30px;font-weight: 600;text-align: center;">菠&nbsp;&nbsp;&nbsp;&nbsp;萝&nbsp;&nbsp;&nbsp;&nbsp;论&nbsp;&nbsp;&nbsp;&nbsp;坛</p>




<div style="margin-top:5%;height:1050px;width: 80%;margin-left: 10%;background-color: #fff;background-size: cover;margin-bottom: 2%;border-radius: 10px;">

		<%
			
		%>
		
		
		
		 <%
		if(this.getServletContext().getAttribute("allpost")!=null){
			List<Recommendpostinfo> posts = (List<Recommendpostinfo>)this.getServletContext().getAttribute("allpost");
	
			int pagesize=4;
			int pagecount ;
			pagecount = posts.size()%pagesize==0 ? posts.size()/pagesize : posts.size()/pagesize+1;
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
	<%for(int i=0;i<pagesize&&i+(pagenow-1)*4<posts.size();i++ ){ 
		Recommendpostinfo p = posts.get((pagenow-1)*4+i);
		String urlp ="postinfoServlet?postid="+p.getRepostid();
		int contentsize = p.getRepostcontent().length();
		if(contentsize>20)
		{
			contentsize=20;
		}
	%>
	
	
	
	
	 <div style="width: 100%;height: 20%;padding-top: 20px;">
            <a href="#" style="text-decoration: none;margin-left:80%;color: #2e82ff;font-size: 18px;">[关注]</a>
            <div style="float:left;"><img src="p3.jpg" style="margin-top: 30%;margin-left:20%;width: 150px;height: 150px;"></div>
            <div style="text-align:center;"><a href=<%=urlp %> style="text-decoration: none;"><h2 style="color: #005097;"><%=p.getReposttitle() %></h2></a></div>
            <div style="margin-left: 20%;margin-right: 10%;"><p style="word-wrap:break-word;">&nbsp;&nbsp;<%=p.getRepostcontent().substring(0, contentsize)+"..." %></p></div>
        </div>
  
    <div style="height: 2px;background-color: #cecece;background-size:cover;margin-left: 30px;margin-right: 30px;margin-top:20px;margin-bottom: 10px;"></div>
	
	
	
	
<%-- 	
	<a href=<%=urlp %>>
		<div style="width: 500px;height: 90px;border:2px solid #000;margin-top:30px">
    		
      		<div style="float:left;"><img src="p1.jpg" style="width: 115px;height: 87px;"></div>
  			
  			<div style="float:right;width: 375px;height: 87px;text-align:left;line-height: 87px;color: rgba(85, 26, 139, 1);font-size: 20px;text-align: left;font-family: PingFangSC-regular;"><%=p.getReposttitle() %></div>
  		</div>
  	</a>
--%>


	<%} %>
	<div style="text-align:center;font-size:1.5em;margin-top:20px"><a href="allpost.jsp?pagenow=1">首页</a>|<a href="allpost.jsp?pagenow=<%=pagenow-1 %>">上一页</a>|<a href="allpost.jsp?pagenow=<%=pagenow+1 %>">下一页</a>|<a href="allpost.jsp?pagenow=<%=pagecount %>">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=pagenow %>/<%=pagecount %></div>
	<div style="text-align:center; font-size:1.5em;"></div>
<%} %>
		
		
</div>
  


</body>
</html>
