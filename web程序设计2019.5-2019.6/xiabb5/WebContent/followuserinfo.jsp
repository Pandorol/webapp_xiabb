<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="cn.entity.Userinfo"%>
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
<%-- <%if(session.getAttribute("usermail")==null) 
 	{
 	response.sendRedirect("/xiabb5/index.jsp");
 	}%> --%>
<body>
<jsp:include page="head0.jsp"></jsp:include>
<jsp:include page="userinfohead.jsp"></jsp:include>

<%Userinfo followuserinfo = (Userinfo)session.getAttribute("followuserinfo"); %>


  <div style="float:left;width: 10%;height: 10%;"><div><img src="p3.jpg" style="margin-top:2%;margin-left:2%;height:86%;width:96%; "></div><div style="height:10%;width:100%;text-align:center;font-weight: bold;"><%=followuserinfo.getName() %></div></div>
  
  
  <div style="position: absolute;left: 430px;top: 260px;width: 144px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">用户名：</div>
  <div style="position: absolute;left: 655px;top: 260px;width: 330px;height: 60px;color: rgba(15, 2, 2, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=followuserinfo.getName() %></div>
  <div style="position: absolute;left: 430px;top: 360px;width: 108px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">邮箱：</div>
  <div style="position: absolute;left: 655px;top: 360px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=followuserinfo.getUsermail() %></div>
  <div style="position: absolute;left: 430px;top: 460px;width: 144px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">性别：</div>
  <div style="position: absolute;left: 655px;top: 460px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=followuserinfo.getGender() %></div>
  <div style="position: absolute;left: 430px;top: 560px;width: 108px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">年龄：</div>
  <div style="position: absolute;left: 655px;top: 560px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=followuserinfo.getAge() %></div>
  <div style="position: absolute;left: 430px;top: 660px;width: 180px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">家乡：</div>
  <div style="position: absolute;left: 655px;top: 660px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=followuserinfo.getHometown()%></div>


<jsp:include page="userinfofooter.jsp"></jsp:include>

</body>
</html>
