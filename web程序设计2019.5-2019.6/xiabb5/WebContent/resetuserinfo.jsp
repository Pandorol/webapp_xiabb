<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!--个人信息修改界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人信息修改</title>
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

<form action="resetuserinfoServlet">
<div style="position: absolute;left: 430px;top: 260px;width: 144px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">用户名：</div>
<input type="text" name="username" maxlength="24" style="position: absolute;left: 577px;top: 260px;width: 437px;height: 55px;color: rgba(136, 136, 136, 1);font-size: 28px;text-align: left;font-family: Roboto;border: 1px solid rgba(187, 187, 187, 1);">
<div style="position: absolute;left: 430px;top: 360px;width: 108px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">性别：</div>
<select name="gender" style="position: absolute;left: 577px;top: 360px;width: 437px;height: 55px;font-size: 40px;text-align: center;font-family: Roboto;">
	<option value="男">男</option>
	<option value="女">女</option>
</select>
 <div style="position: absolute;left: 430px;top: 460px;width: 144px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">年龄：</div>
<input  name="age" type="number" min="1" max="200" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" maxlength="3" style="position: absolute;left: 577px;top: 460px;width: 437px;height: 55px;color: rgba(136, 136, 136, 1);font-size: 28px;text-align: left;font-family: Roboto;border: 1px solid rgba(187, 187, 187, 1);">
<div style="position: absolute;left: 430px;top: 560px;width: 108px;height: 54px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">家乡：</div>
<input name="hometown" type="text" maxlength="24" style="position: absolute;left: 577px;top: 560px;width: 437px;height: 54px;color: rgba(136, 136, 136, 1);font-size: 28px;text-align: left;font-family: Roboto;border: 1px solid rgba(187, 187, 187, 1);">
<input type="submit" value="确认" class="button2" style="position: absolute;left: 590px;top: 680px;width: 160px;height: 45px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);">
<a href="userinfo.jsp"><input type="button" value="取消" class="button2" style="position: absolute;left: 850px;top: 680px;width: 160px;height: 45px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>
</form>

<jsp:include page="userinfofooter.jsp"></jsp:include></body>
</body>
</html>
