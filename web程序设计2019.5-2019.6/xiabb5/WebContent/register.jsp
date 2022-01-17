<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!--注册界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <title>注册</title>
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
</head>
<body>
<form action='registerServlet' onsubmit='return checkFrom()'>
  <div style="position: absolute;left: 750px;top: 300px;width: 187px;height: 66px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">用户名：</div><input id="username" type="text" name = "username" placeholder="请在此输入" style="position: absolute; left: 950px;top: 300px;width: 272px;height: 60px;color: rgba(136, 136, 136, 1);font-size: 20px;text-align: left;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);">
 
  <div style="position: absolute;left: 750px;top: 400px;width: 186px;height: 61px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">邮箱：</div><input id="usermail" type="email" name="usermail" placeholder="请在此输入" style="position: absolute; left: 950px;top: 400px;width: 272px;height: 63px;color: rgba(136, 136, 136, 1);font-size: 20px;text-align: left;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);">

  <div style="position: absolute;left: 750px;top: 500px;width: 158px;height: 58px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">密码：</div>  <input id="password" maxlength="16" name="password" type="password" placeholder="最长可输入16字节" style="position: absolute; left: 950px;top: 500px;width: 272px;height: 67px;color: rgba(136, 136, 136, 1);font-size: 20px;text-align: left;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);">
 
  <div style="position: absolute;left: 750px;top: 600px;width: 197px;height: 64px;color: rgba(16, 16, 16, 1);font-size: 36px;text-align: left;font-family: SourceHanSansSC-bold;">确认密码：</div> <input id="passwordagain" maxlength="16" type="password" name="passwordagain" placeholder="最长可输入16字节" style="position: absolute; left: 950px;top: 600px;width: 272px;height: 70px;color: rgba(136, 136, 136, 1);font-size: 20px;text-align: left;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);">

  <input type="submit" id="commit" class="button2" value="确认" style="position: absolute;left: 841px;top: 748px;width: 109px;height: 32px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);">

  <a href="login.jsp"><input type="button" class="button2" value="取消" style="position: absolute;left: 1014px;top: 748px;width: 106px;height: 32px;border-radius: 4px;color: rgba(16, 16, 16, 1);font-size: 20px;text-align: center;font-family: Microsoft Yahei;border: 1px solid rgba(187, 187, 187, 1);" ></a>
  
</form>
<script>
function checkFrom(){
	var username = document.getElementById("username");
	var usermail = document.getElementById("usermail");
	var password = document.getElementById("password");
	var passwordagain = document.getElementById("passwordagain");
	if(username.value.length==0||usermail.value.length==0||password.value.length==0||passwordagain.value.length==0){
		alert("输入不能为空！");
		return false;
	}
	if(password.value!=passwordagain.value){
		alert("两次输入密码不一致");
		return false;
	}
		return true;
}



</script>

</body>
</html>
