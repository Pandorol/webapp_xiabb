<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="cn.entity.Postreplyinfo,java.util.List,cn.entity.Userinfo"%>
<!DOCTYPE html> <!--单独具体一个帖子的界面-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>XX帖子</title>
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
        .report_button {

            display: inline-block;
            border-radius: 8px;
            background-color: #fff;
            border: none;
            color: #dd5145;
            text-align: center;
            padding: 20px;
            width: 15%;
            transition: all 0.5s;
            cursor: pointer;
            margin-left: 75%;
            opacity:0.8;
            margin-bottom: 2%;
        }
        .report_button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
            font-size: 15px;
            font-weight: bold;
        }
        .report_button span:after {
            content: '»';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        .report_button:hover span {
            padding-right: 25px;
        }
        .report_button:hover span:after {
            opacity: 1;
            right: 0;
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
 
 
 
 <div style="overflow:hidden;background-color: #ffffff;background-size: cover;width: 80%;margin-left: 10%;margin-top: 4%;margin-bottom: 2%;border-radius: 10px;">
    <div style="width: 80%;margin-left: 10%;margin-top: 30px;">
        <a href="collectServlet" style="text-decoration: none;margin-left:95%;color: #2e82ff;font-size: 18px;padding-top: 30px;">[收藏]</a>
        <div style="text-align: center;"><p style="text-decoration: none;"><h2 style="color: #000;">${title}</h2></p></div>
        <div style="text-align: center;margin-left: 200px"><a href="postuserinfo.jsp" style="text-decoration: none;"><h4 style="color: #005097;"><%=postuserinfo.getName() %></h4></a></div>

        <div style="margin-left: 10%;margin-right: 10%;"><p style="word-wrap:break-word;">&nbsp;&nbsp;${content}</p></div>
    </div>
    <div style="width: 80%;margin-left: 10%;margin-top: 30px">
        <h2 style="font-weight: 600;">精选留言<br/><br/></h2>
        <div>
        
        
        
        
        
   <% 
   int postid = Integer.parseInt(String.valueOf(session.getAttribute("postid")));
   if(this.getServletContext().getAttribute("replypostid"+postid)!=null){
	   List<Postreplyinfo> postreplyinfo2 = (List<Postreplyinfo>) this.getServletContext().getAttribute("replypostid"+postid);
   %>
   <%

   %>
  
  
  
  
    
   
    <%for(Postreplyinfo p : postreplyinfo2){    
    %>

    <p style="font-size:20px;text-align: left"><%=p.getUsername() %>:</p>
    <p><%=p.getReplycontent() %></p>
    <p style="text-align: right; font-size: 16px">时间：<%=p.getReplydate() %></p>

    <%}
    }
    
    %>
  </div>
  <br/><br/>

		


        </div>
    </div>
</div>






<p class="home_title" style="font-size: 30px;font-weight: 600;text-align: center;">留&nbsp;&nbsp;&nbsp;&nbsp;言&nbsp;&nbsp;&nbsp;&nbsp;板</p>
<form action="replyServlet">
<div style="overflow:hidden;background-color: #ffffff;background-size: cover;width: 80%;height: 550px;margin-left: 10%;margin-top: 3%;margin-bottom: 2%;border-radius: 10px;">
    <h2 style="font-weight: 600;">&nbsp;&nbsp;&nbsp;&nbsp;我要留言</h2>
    <div style="border: #687f92;background-size: 2px;border-style: solid;width: 80%;margin-left: 10%;margin-right: 10%;margin-top: 3%;height: 350px;">
   		 
        <textarea type="text" name="replycontent" style="width: 99.4%;height: 344px;font-size: 20px;text-indent:25px;resize: none;"></textarea>
   		 
    </div>
</div>
<input type="submit" value="留言" class="report_button" style="vertical-align:middle" >
</form>




 
 
 
 
 
 
 
 
 <%-- 
 
  <div style="position: absolute;text-align: center;left: 520px;top: 160px;width: 800px;height: 51px;line-height: 26px;font-size: 25px;font-family: SourceHanSansSC-regular;" >${title}</div>
 
  <div style="position: absolute;text-align: left;left: 950px;top: 190px;width: 800px;height: 51px;line-height: 26px;font-size: 18px;font-family: SourceHanSansSC-regular;" ><a href="postuserinfo.jsp"><%=postuserinfo.getName() %></a></div>
  
  <div style="position: absolute;left: 530px;top: 270px;width: 850px;height: 300px;background-color: rgba(255,251,181,0);font-size: 18px;border:2px solid #000;">${content}</div>
  <a href="reply.jsp"><input type="button" value="留言" class="button2" style="position: absolute;left: 1160px;top: 620px;width: 100px;height: 39px;font-size: 28px;text-align: center;font-family: SourceHanSansSC-regular;"></a>
  <a href="collectServlet"><input type="button" value="收藏" class="button2" style="position: absolute;left: 1040px;top: 620px;width: 100px;height: 39px;font-size: 28px;text-align: center;font-family: SourceHanSansSC-regular;"></a>
  
  
 
  <a href="home.jsp"><input type="button" value="取消" class="button2" style="position: absolute;left: 1280px;top: 620px;width: 100px;height: 39px;font-size: 28px;text-align: center;font-family: SourceHanSansSC-regular;"></a>
  --%>
  
  
  
  

</body>
</html>
