<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>网络书城网站</title>
    <link type="text/css" rel="stylesheet" href="pages/user/css/style.css" >
    <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function () {
        //给加入购物车添加点击事件
            $(".addBook").click(function () {
                var bookId=this.id;
                alert(bookId);
                //项servlet发送请求
                location ="CartServlet?method=addBook2Cart&bookId="+bookId;
            })
        });
    </script>
</head>
<body background="img/back_book.jpg">
<div id="header">
    <img class="logo_img" alt="" src="static/img/logo.gif" >
    <span class="wel_word">网上旧书城</span>
    <%@include file="/WEB-INF/incluce/welcome.jsp"%>

</div>

<%--<div id="main" >--%>
    <%--<%@include file="/index.jsp"%>--%>
<%--</div>--%>

    <div id="bottom">
		<span>
			yuxy.Copyright &copy;2018
		</span>
    </div>

</body>
</html>