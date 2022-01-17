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
<%-- 
<%System.out.println("cc");
if(session.getAttribute("usermail")==null)
	{
	response.sendRedirect("/xiabb5/index.jsp");
	}%>
--%>
<body>
<jsp:include page="head0.jsp"></jsp:include>

<%Userinfo postuserinfo = (Userinfo)session.getAttribute("postuserinfo"); %>


  <img src="p3.jpg" style="position: absolute;left: 940px;top: 260px;width: 150px;height: 150px">
  <a href="followServlet"><input type="button" value="关注" class="button2" style="position: absolute;left: 940px;top: 420px;width: 150px;height: 46px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>
  <div style="position: absolute;left: 430px;top: 260px;width: 144px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">用户名：</div>
  <div style="position: absolute;left: 655px;top: 260px;width: 330px;height: 60px;color: rgba(15, 2, 2, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=postuserinfo.getName() %></div>
  <div style="position: absolute;left: 430px;top: 360px;width: 108px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">邮箱：</div>
  <div style="position: absolute;left: 655px;top: 360px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=postuserinfo.getUsermail() %></div>
  <div style="position: absolute;left: 430px;top: 460px;width: 144px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">性别：</div>
  <div style="position: absolute;left: 655px;top: 460px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=postuserinfo.getGender() %></div>
  <div style="position: absolute;left: 430px;top: 560px;width: 108px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">年龄：</div>
  <div style="position: absolute;left: 655px;top: 560px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=postuserinfo.getAge() %></div>
  <div style="position: absolute;left: 430px;top: 660px;width: 180px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">家乡：</div>
  <div style="position: absolute;left: 655px;top: 660px;width: 330px;height: 60px;color: rgba(16, 16, 16, 1);font-size: 28px;text-align: left;font-family: SourceHanSansSC-regular;"><%=postuserinfo.getHometown()%></div>

</body>
</html>
