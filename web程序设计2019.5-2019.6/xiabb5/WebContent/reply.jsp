<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="cn.entity.Postreplyinfo,java.util.List"%>
<!DOCTYPE html> <!--评论输入界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>评论</title>
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
  </style>
</head>
 
<%
if(session.getAttribute("usermail")==null)
	{
	response.sendRedirect("/xiabb5/login.jsp");
	}%>

<body>
<jsp:include page="head0.jsp"></jsp:include>

  <div style="position: absolute;text-align: center;left: 520px;top: 160px;width: 800px;height: 51px;line-height: 26px;font-size: 25px;font-family: SourceHanSansSC-regular;" >${title}</div>
  <div style="position: absolute;left: 530px;top: 270px;width: 850px;height: 300px;background-color: rgba(255,251,181,0);font-size: 18px;border:2px solid #000;">${content}</div>

  <%
  	String back=request.getHeader("Referer");
  %>
  <a href=<%=back %>><input type="button" value="取消" class="button2" style="position: absolute;left: 1280px;top: 645px;width: 100px;height: 39px;font-size: 28px;text-align: center;font-family: SourceHanSansSC-regular;"></a>
  

<form action="replyServlet">

<textarea cols="1" name="replycontent" style="position: absolute;left: 530px;top: 580px;width: 850px;height: 50px;line-height: 26px;color: rgba(136, 136, 136, 1);font-size: 18px;text-align: left;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></textarea>
<input type="submit" value="留言" class="button2" style="position: absolute;left: 1160px;top: 645px;width: 100px;height: 39px;font-size: 28px;text-align: center;font-family: SourceHanSansSC-regular;">

</form>


 <% 
   int postid = Integer.parseInt(String.valueOf(session.getAttribute("postid")));
   if(this.getServletContext().getAttribute("replypostid"+postid)!=null){
	   List<Postreplyinfo> postreplyinfo2 = (List<Postreplyinfo>) this.getServletContext().getAttribute("replypostid"+postid);
   %>
   <%

   %>
  
  
  <div style="position: absolute;left: 530px;top: 710px;width: 650px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;">
  
    
   
    <%for(Postreplyinfo p : postreplyinfo2){    
    %>
    <div style="width: 850px;height:160px;border:2px solid #000;magin-top:30px;">
    <p style="font-size:20px;text-align: left"><%=p.getUsername() %>:</p>
    <p><%=p.getReplycontent() %></p>
    <p style="text-align: right; font-size: 16px">时间：<%=p.getReplydate() %></p>
    </div>
    <%}
    }%>
  </div>


</body>
</html>
