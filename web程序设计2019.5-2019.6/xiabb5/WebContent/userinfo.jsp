<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<%
if(session.getAttribute("usermail")==null)
	{
	response.sendRedirect("/xiabb5/login.jsp");
	}%>
<body>
<jsp:include page="head0.jsp"></jsp:include>

<jsp:include page="userinfohead.jsp"></jsp:include>


<div style="width: 75%;height: 100%; background-color: #ffffff;background-size: cover;float: left;">
    <div style="font-size: 25px;color:#999999;font-weight: bold;margin-left: 8%;padding-top: 12px;padding-bottom: 12px;">基本资料<a href="resetuserinfo.jsp" style="text-decoration: none;margin-left:70%;color: #2e82ff;font-size: 18px;">[前往修改]</a></div>
    <div style="height: 3px;background-color: #cecece;background-size:cover;margin-left: 5%;margin-right: 5%;margin-top: 3px;"></div>
    <div style="width: 100%;height: 30%;">
      <div style="float: left;width: 50%;">
        <div style="font-size: 18px;color:#000;font-weight: bold;margin-left: 12%;margin-top: 50px;padding-bottom: 6px;">当前头像</div>
        <div style="height: 1px;background-color: #cecece;background-size:cover;margin-left: 12%;margin-right: 12%;margin-top: 3px;"></div>
        <img src="p3.jpg" style="margin-left:12%;margin-top:30px;width: 180px;height: 180px;">


      </div>
      <div style="float: left;width: 50%;">
        <div style="font-size: 18px;color:#000;font-weight: bold;margin-left: 12%;;margin-top: 50px;;padding-bottom: 6px;">设置新头像</div>
        <div style="height: 1px;background-color: #cecece;background-size:cover;margin-left: 12%;margin-right: 12%;margin-top: 3px;"></div>
        <div style="margin-top: 35px;" ><a href="#" style="margin-left:12%;;font-size:17px;text-decoration: none;color: #2d64b3">前往设置新头像</a></div>
      </div>
    </div>
    <div style="margin-top: 40px;margin-left: 20%;">
      <form style="font-size: 20px;">
        <div style="margin-left:2.5%;margin-top:20px;text-align: left;">用户名：<span style="margin-left: 100px;">${username}</span></div>
        <div style="margin-left:5%;margin-top:20px;text-align: left;">邮箱：<span style="margin-left: 100px;">${usermail}</span></div>
        <div style="margin-left:5%;margin-top:20px;text-align: left;">性别：<span style="margin-left: 100px;">${gender}</span></div>
        <div style="margin-left:5%;margin-top:20px;text-align: left;">年龄：<span style="margin-left: 100px;">${age}</span></div>
        <div style="margin-left:5%;margin-top:20px;text-align: left;">家乡：<span style="margin-left: 100px;">${hometown}</span></div>
      </form>
    </div>
  </div>

  
<jsp:include page="userinfofooter.jsp"></jsp:include>
</body>
</html>
