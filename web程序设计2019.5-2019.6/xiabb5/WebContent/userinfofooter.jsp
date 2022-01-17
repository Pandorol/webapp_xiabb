<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



    </div>
    <div style="width: 25%;height: 100%;background-color: #e9f2fc;background-size: cover;float: left;">
        <div style="font-size: 18px;font-weight: bold;margin-left: 8%;padding-top: 10px;padding-bottom: 10px;">个人信息</div>
        <div style="height: 1px;background-color: #cecece;background-size:cover;margin-left: 8%;margin-right: 8%;margin-top: 3px;"></div>
        <div style="height: 19%;">
            <div style="float: left;width: 40%;height: 100%;">
                <img src="p3.jpg" style="margin-left:8%;margin-top:20px;width: 140px;height: 140px">
            </div>
            <div style="float: left; width: 60%;height: 100%;">
                <ul style="list-style: none;margin-left: 20px;">
                    <li style="color: #0449cb;margin-top: 30px;padding-left: 10px;font-size: 18px;"><a href="userinfo.jsp"  style="color: #2e82ff;text-decoration: none;">${username}</a></li>
                    <li style="margin-top: 40px;">关注:&nbsp;&nbsp;<a style="color: #2e82ff;">1</a></li>
                    <li style="padding-top: 15px;">粉丝:&nbsp;&nbsp;<a style="color:#2e82ff; ">1</a></li>
                </ul>
            </div>
        </div>
        <div>
            <div style="height: 1px;background-color: #cecece;background-size:cover;margin-left: 8%;margin-right: 8%;"></div>
            <ul style="list-style: none;">
                <li style="padding-top: 15px;padding-bottom: 7px;"><a href="home.jsp" style="text-decoration: none;color: #7fc5fc ;font-size: 18px;">首页</a></li>
                <li style="color: #7fc5fc ;font-size: 18px;padding-top: 7px;padding-bottom: 7px;"><a href="myfollowServlet" style="text-decoration: none;color: #7fc5fc ;font-size: 18px;">我的关注</a></li>
                <li style="color: #7fc5fc ;font-size: 18px;padding-top: 7px;padding-bottom: 7px;"><a href="mypostServlet" style="text-decoration: none;color: #7fc5fc ;font-size: 18px;">我的帖子</a></li>
                <li style="color: #7fc5fc ;font-size: 18px;padding-top: 7px;padding-bottom: 15px;"><a href="mycollectionsServlet" style="text-decoration: none;color: #7fc5fc ;font-size: 18px;">我的收藏</a></li>
            </ul>
        </div>

    </div>
</div>