<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/12/28
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>重置密码</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <meta name="keywords" content="taped login form Widget a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Meta tag Keywords -->
    <link rel="stylesheet" href="css/style_question.css" type="text/css" media="all" /><!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all" />
    <%--<link href="//fonts.googleapis.com/css?family=Snippet" rel="stylesheet">--%>
    <%--<link href="//fonts.googleapis.com/css?family=Barlow" rel="stylesheet">--%>
    <%--<link href="//fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">--%>
</head>
<body data-vide-bg="img/ship">
<section class="login-maintop">
    <div class="login-main">
        <header><h1>重置密码</h1></header>
        <div class="login-form">
            <%--../../Forget_password--%>
            <form action="../../Forget_password" method="get">
                <span><i class="fa fa-user-o" aria-hidden="true"></i></span>
                <input type="text" name="username" value="${sessionScope.userName}" placeholder="用户名" required="">
                <span><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
                <input type="password" name="password" placeholder="输入新密码" required="">
                <input type="submit" value="重置密码">
            </form>
            <div class="login-input">

            </div>
            <div class="social-icons">


            </div>
        </div>
        <!--footer-->

        <!--//footer-->
    </div>
</section>
<script type="text/javascript" src="../../js/jquery-2.1.4.min.js"></script>
<script src="../../js/jquery.vide.min.js"></script>
</body>
</html>
