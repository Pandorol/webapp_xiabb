<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!--登录界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <title>登录界面</title>
</head>
<style>
  body
  {
    background-image: url('1.jpg');
    position:fixed;
    top: 0;
    left: 0;
    width:100%;
    height:100%;
    min-width: 1000px;
    z-index:-10;
    zoom: 1;
    background-color: #fff;
    background-repeat: no-repeat;
    background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    background-position: center 0;
  }/*背景图*/
  .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
  }
  .button2 {
    background-color: white;
    color: black;
    border: 2px solid #3F51B5;
  }

  .button2:hover {
    background-color: #3F51B5;
    color: white;
  }
</style>
<body >
<script type="text/javascript">
 window.onload = function(){
	 alert("请先登录!");
 };
</script>
<form action="loginServlet">
  <div style="position: absolute; text-shadow: 5px 5px 5px orange;"><h1>菠萝论坛</h1></div>
  
  <div style="position: absolute;left: 741px;top: 396px;width: 200px;height: 27px;color: rgba(0,0,0,1);font-size: 25px;text-align: left;font-family: SourceHanSansSC-regular;">用户：</div>  <input type="text"  name="usermail" maxlength="30" placeholder="请在此输入邮箱地址" style="position: absolute;left: 847px;top: 393px;width: 267px;height: 33px;opacity: 0.64;color: rgba(136, 136, 136, 1);font-size: 14px;text-align: left;font-family: Roboto;border: 1px solid rgba(187, 187, 187, 1);"><!--用户名及输入框-->
  
  <div style="position: absolute;left: 741px;top: 459px;width: 200px;height: 27px;color: rgba(0,0,0,1);font-size: 25px;text-align: left;font-family: SourceHanSansSC-regular;">密码：</div>  <input type="password" name="password" maxlength="16" placeholder="请在此输入密码" style="position: absolute;left: 847px;top: 459px;width: 267px;height: 33px;opacity: 0.64;color: rgba(136, 136, 136, 1);font-size: 14px;text-align: left;font-family: Roboto;border: 1px solid rgba(187, 187, 187, 1);">
 
  <div style="position: absolute;left: 1000px;top: 513px;width: 107px;height: 33px;opacity: 0.64;color: rgba(255,217,0,0.98);font-size: 14px;text-align: center;font-family: Microsoft Yahei;"><a href="forgetpassword.jsp"> 忘记密码？</a></div>
 
  <input type="submit" value="登录" class="button2" style="position: absolute;left: 850px;top: 557px;width: 93px;height: 33px;opacity: 0.61;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 15px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"><!--(需要判断密码是否正确)-->

  <a href="register.jsp"><input type="button" class="button2" value="注册" style="position: absolute;left: 1020px;top: 557px;width: 93px;height: 33px;opacity: 0.61;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 15px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>

</form>


<%-- 
<%

String urlfrom = request.getHeader("referer");
String url = urlfrom.substring(urlfrom.lastIndexOf("/")+1);
String url2 = "index.jsp";
if(url.equals(url2)){
%>

<script type="text/javascript">
alert("密码或邮箱出错！");
</script>
<%


}
%>--%>
</body>
</html>
