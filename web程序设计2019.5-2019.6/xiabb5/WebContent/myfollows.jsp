<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cn.entity.Userinfo,java.util.List"%>
<!DOCTYPE html> <!--个人资料界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
  <style>

    .button2 {
      background-color: white;
      color: black;
      border: 2px solid #8BC34A;
    }

    .button2:hover {
      background-color: #8BC34A;
      color: white;
    }
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
	List<Userinfo> myfollows = (List<Userinfo>)session.getAttribute("myfollows");
	int linesize=10; 
	int linecount = myfollows.size()%linesize==0?myfollows.size()/linesize : myfollows.size()/linesize+1;
	for(int i=0;i<linecount;i++){
		%>
		<div style="width:100%;height:10%;">
		<%
		for(int j=0;j<linesize&&i*linesize+j<myfollows.size();j++){
		Userinfo myfollow = myfollows.get(i*linesize+j);
		String urlf ="followinfoServlet?followusermail="+myfollow.getUsermail();
		%>

		<a href=<%=urlf %>><div style="float:left;width: 10%;height: 100%;"><div><img src="p3.jpg" style="margin-top:2%;margin-left:2%;height:86%;width:96%; "></div><div style="height:10%;width:100%;text-align:center;font-weight: bold;"><%=myfollow.getName() %></div></div></a>
 <% 			
		}
		%>
		</div>
		<%	
	}
%>
	

<jsp:include page="userinfofooter.jsp"></jsp:include>
</body>
</html>
