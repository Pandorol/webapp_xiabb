<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!--新建帖子界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新建帖子</title>
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

<form action="newpostServlet">

<div style="position: absolute;left: 300px;top: 200px;width: 100px;height: 53px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: center;font-family: SourceHanSansSC-regular;">标题:</div>

<input type="text" maxlength="20" name="title" placeholder="请在此输入" style="position: absolute;left: 410px;top: 200px;width: 700px;height: 51px;line-height: 26px;border-radius: 4px 4px 4px 4px;background-color: rgba(255, 255, 255, 1);color: rgba(16, 16, 16, 1);font-size: 18px;text-align: left;font-family: Roboto;border: 1px solid rgba(220, 223, 230, 1);" >

<div style="position: absolute;left: 300px;top: 260px;width: 100px;height: 53px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: center;font-family: SourceHanSansSC-regular;">内容:</div>
<%-- <input type="text" name="content" placeholder="请在此输入" style="position: absolute;left: 520px;top: 270px;width: 1000px;height: 450px;line-height: 26px;border-radius: 4px 4px 4px 4px;background-color: rgba(255, 255, 255, 1); border: 1px solid rgba(220, 223, 230, 1);" >--%>

<textarea cols="1" name="content" style="position: absolute;left: 410px;top: 260px;width: 700px;height: 450px;border-radius: 4px 4px 4px 4px;background-color: rgba(255, 255, 255, 1); border: 1px solid rgba(220, 223, 230, 1);"></textarea>

<input type="submit" class="button2" value="发表" style="position: absolute;left: 500px;top: 780px;width: 160px;height: 45px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);">
<%String back = request.getHeader("Referer"); %>
<a href=<%=back %>><input type="button" class="button2" value="取消" style="position: absolute;left: 800px;top: 780px;width: 160px;height: 45px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>

</form>


</body>
</body>
</html>
