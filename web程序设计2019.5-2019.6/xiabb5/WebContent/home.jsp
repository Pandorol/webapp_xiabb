<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!--主页-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>菠萝论坛</title>
  <style>
        body
        {
            background-image: url('1.jpg');
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        .button2 {
            background-color: white;
            color: black;
            border: 2px solid #F8E71C;
        }
        .button2:hover {
            background-color: #F8E71C;
            color: white;
        }
        div.img {
            /* border: 1px solid #ccc;*/
        }
        div.img:hover {
            /*border: 1px solid #777;!*图片边框设计*!*/
        }
        div.img img {
            width: 100%;
            height: auto;
        }
        div.desc {
            padding: 15px;
            text-align: left;/*图片下方文字字体居中*/
        }
        * {
            /*box-sizing: border-box;*/
        }
        .responsive {
            padding: 0 6px;
            float: left;
            width: 24.99999%;
        }
        @media only screen and (max-width: 700px){
            .responsive {
                width: 49.99999%;
                margin: 6px 0;
            }
        }
        @media only screen and (max-width: 500px){
            .responsive {
                width: 100%;
            }
        }
        .clearfix:after {
            content: "";
            display: table;
            clear: both;
        }
        a{ text-decoration:none}
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
<body>
<%-- 
 <%if(session.getAttribute("usermail")==null) 
 	{
 	response.sendRedirect("/xiabb5/index.jsp");
 	}%> 
 --%>
<jsp:include page="head0.jsp"></jsp:include>
<p class="home_title" style="margin-top: 50px;font-size: 30px;font-weight: 600;text-align: center;">菠&nbsp;&nbsp;&nbsp;&nbsp;萝&nbsp;&nbsp;&nbsp;&nbsp;论&nbsp;&nbsp;&nbsp;&nbsp;坛</p>

<div style="margin-top:5%;height:1050px;width: 80%;margin-left: 10%;background-color: #fff;background-size: cover;margin-bottom: 2%;border-radius: 10px;">

 
        <div style="width: 100%;height: 22%;padding-top: 20px;">
            <a href="#" style="text-decoration: none;margin-left:80%;color: #2e82ff;font-size: 18px;">[关注]</a>
            <div style="float:left;"><img src="p3.jpg" style="margin-top: 35%;margin-left:20%;width: 150px;height: 150px;"></div>
            <div style="text-align:center;"><a href="postinfoServlet?id=postid0" style="text-decoration: none;"><h2 style="color: #005097;">${title0 }</h2></a></div>
            <div style="margin-left: 20%;margin-right: 10%;"><p style="word-wrap:break-word;">&nbsp;&nbsp;${content0 }</p></div>
        </div>
  
    <div style="height: 2px;background-color: #cecece;background-size:cover;margin-left: 30px;margin-right: 30px;margin-top:20px;margin-bottom: 10px;"></div>

        <div style="width: 100%;height: 22%;">
            <a href="#" style="text-decoration: none;margin-left:80%;color: #2e82ff;font-size: 18px;padding-top: 30px;">[关注]</a>
            <div style="float:left;"><img src="p3.jpg" style="margin-top: 35%;margin-left:20%;width: 150px;height: 150px;"></div>
            <div style="text-align:center;"><a href="postinfoServlet?id=postid1" style="text-decoration: none;"><h2 style="color: #005097;">${title1 }</h2></a></div>
            <div style="margin-left: 20%;margin-right: 10%;"><p style="word-wrap:break-word;">&nbsp;&nbsp;${content1 }</p></div>
        </div>

    <div style="height: 2px;background-color: #cecece;background-size:cover;margin-left: 30px;margin-right: 30px;margin-top:20px;margin-bottom: 10px;"></div>


        <div style="width: 100%;height: 22%;">
            <a href="#" style="text-decoration: none;margin-left:80%;color: #2e82ff;font-size: 18px;padding-top: 30px;">[关注]</a>

            <div style="float:left;"><img src="p3.jpg" style="margin-top: 35%;margin-left:20%;width: 150px;height: 150px;"></div>
            <div style="text-align:center"><a href="postinfoServlet?id=postid2" style="text-decoration: none;"><h2 style="color: #005097;">${title2 }</h2></a></div>
            <div style="margin-left: 20%;margin-right: 10%;"><p style="word-wrap:break-word;">&nbsp;&nbsp;${content2 }</p></div>
        </div>

    <div style="height: 2px;background-color: #cecece;background-size:cover;margin-left: 30px;margin-right: 30px;margin-top:20px;margin-bottom: 10px;"></div>


        <div style="width: 100%;height: 22%">
            <a href="#" style="text-decoration: none;margin-left:80%;color: #2e82ff;font-size: 18px;padding-top: 30px;">[关注]</a>
            <div style="float:left;"><img src="p3.jpg" style="margin-top: 35%;margin-left:20%;width: 150px;height: 150px;"></div>
            <div style="text-align:center;"><a href="postinfoServlet?id=postid3" style="text-decoration: none;"><h2 style="color: #005097;">${title3 }</h2></a></div>
            <div style="margin-left: 20%;margin-right: 10%;"><p style="word-wrap:break-word;">&nbsp;&nbsp;${content3 }</p></div>
        </div>

</div>
<a href="allpostServlet"><button class="report_button" style="vertical-align:middle"><span>查看更多 </span></button></a>

  
  
  
  
  



</body>

</html>
