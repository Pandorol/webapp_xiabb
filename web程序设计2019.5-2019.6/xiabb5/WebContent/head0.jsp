<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <style>
   body
    {
    background-image: url('1.jpg');
    background-size: cover;
    margin:0;
    padding:0;
    }
</style>   
    
 <%
 String name = "登录";
 String exit = "注册";
 String nameurl = "login.jsp";
 String exiturl = "register.jsp";
 if(session.getAttribute("username")!=null)
 {
	 name = (String)session.getAttribute("username");
	 exit = "退出登录";
	 nameurl = "userinfo.jsp";
	 exiturl = "login.jsp";
 }
 
 
 %>
 
 
<div id="csdn-toolbar" class="csdn-toolbar tb_disnone">
  <div class="container row center-block" >
    <ul class="pull-left left-menu clearfix" id="nav-left-menu">
      <li style=""> <img src="菠萝.png" style="margin-top:5px;width: 30px;height: 30px;"></li>
      <li><a href="homeServlet" class="" >首页</a></li>
      <li><a href="userinfo.jsp" class="">个人中心</a></li>
    </ul>
    <div class="pull-right login-wrap unlogin">
      <ul class="btns">
        <li class="toolbar-tracking csdn-tracking-statistics tracking-click" ><a href="#" style="padding:0" ></a></li>
        <li><img src="写字.png" style="margin-top:0px;width: 30px;height: 30px;"></li>
        <li class="write-bolg-btn csdn-tracking-statistics tracking-click" ><a href="newpost.jsp" ><span>新建贴</span></a> </li>
        <li class="userinfo"><a href=<%=nameurl %>><%=name %></a><span></span><a href=<%=exiturl %>><%=exit %></a></li>
      </ul>
    </div>
  </div>
</div><link rel="stylesheet" href="bar.css">


   
    
 <%-- 
<font size = "10">欢迎：${username}</font> 

<a href="homeServlet"><input value="首页" class="button2" type="button" style="position: absolute;left: 1213px;top: 48px;width: 133px;height: 57px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>

<a href="userinfo.jsp"><input value="个人中心" class="button2" type="button" style="position: absolute;left: 1400px;top: 48px;width: 133px;height: 57px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>

<a href="newpost.jsp"><input value="新建帖" class="button2" type="button" style="position: absolute;left: 1587px;top: 48px;width: 133px;height: 54px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>

<a href="login.jsp"><input value="退出登录" class="button2" type="button" style="position: absolute;left: 1775px;top: 48px;width: 133px;height: 57px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);"></a>


 --%> 