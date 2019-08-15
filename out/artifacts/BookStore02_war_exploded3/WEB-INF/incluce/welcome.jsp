<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/10/29
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<c:if test="${empty sessionScope.username}">
    <div id="guide">
        <a href="../../pages/user/login.jsp">登录</a>
        <a href="../../pages/user/regist.jsp">注册</a> &nbsp;&nbsp;
        <a href="../../pages/book/search.jsp">图书浏览</a> &nbsp;&nbsp;
        <a href="../../index.jsp">返回</a>
    </div>
</c:if>
<c:if test="${not empty sessionScope.username}">
<div>
    <span>欢迎<span class="um_span">${sessionScope.username}</span>光临网络书城系统</span>
    <a href="../../pages/book/search_login.jsp">图书浏览</a>
    <a href="../../pages/cart/cart.jsp">购物车</a>
    <a href="../../pages/order/order.jsp">我的订单</a>
    <a href="../../index.jsp">返回</a>
    <a href="../../Exit!exit">注销</a>&nbsp;&nbsp;
</div>
</c:if>
</html>
