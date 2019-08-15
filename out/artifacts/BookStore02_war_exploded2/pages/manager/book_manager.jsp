
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理</title>
<link type="text/css" rel="stylesheet" href="../../static/css/style.css" >
	<script type="text/javascript" src="../../js/jquery-1.7.2.js"></script>
	<script>
   $(function(){
            //给删除图书的超链接绑定单击事件
            $(".deleteBook").click(function(){
                //获取要删除的书的书名
// 			var title = $(this).parent().parent().children().first().text();
// 			var title = $(this).parents("tr").children(":first").text();
// 			var title = this.id;
                var title = $(this).attr("id");
                var flag = confirm("确定要删除【"+title+"】这本图书吗？");
                return flag;
            });
        });
	</script>
</head>
<body>
	<div id="header">
			<img class="logo_img" alt="" src="../../static/img/logo.gif" >
			<span class="wel_word">图书管理系统</span>
			<div>
				<a href="../../BookManagerServlet?method=getPageBooks">图书管理</a>
				<a href="order_manager.jsp">订单管理</a>
				<a href="../../index.jsp">返回商城</a>
			</div>

	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>名称</td>
				<td>价格</td>
				<td>作者</td>
				<td>销量</td>
				<td>库存</td>
				<td colspan="2">操作</td>
			</tr>


			<c:forEach items="${requestScope.page.list}" var="book1">
				<tr>
					<td>${book1.title }</td>
					<td>${book1.price }</td>
					<td>${book1.author }</td>
					<td>${book1.sales }</td>
					<td>${book1.stock }</td>
					<td>
						<%--&title=${book1.title}&price=${book1.price }&author=${book1.author }&sales=${book1.sales }&stock=${book1.stock }--%>
					<a  href="../../BookManagerServlet?method=getBook&bookId=${book1.id}">
						修改</a></td>
					<td><a id="${book1.title }" class="deleteBook" href="../../BookManagerServlet?method=deleteBook&bookId=${book1.id}">删除</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="../../pages/manager/book_edit.jsp">添加图书</a></td>
			</tr>	
		</table>
		<div id="page_nav">
			<c:if test="${requestScope.page.pageNo>1}">
			<a href="../../BookManagerServlet?method=getPageBooks">首页</a>
			<a href="../../BookManagerServlet?method=getPageBooks&pageNo=${requestScope.page.pageNo-1}">上一页</a>
			</c:if>
			当前页是【${requestScope.page.pageNo}】
			<c:if test="${requestScope.page.pageNo<requestScope.page.totalPageNo}">
			<a href="../../BookManagerServlet?method=getPageBooks&pageNo=${requestScope.page.pageNo+1}">下一页</a>
			<a href="../../BookManagerServlet?method=getPageBooks&pageNo=${requestScope.page.totalPageNo}">末页</a>
			</c:if>
			到第<input value="${requestScope.page.pageNo}" name="pn" id="pn_input"/>页
			<input type="button" value="确定" id="inputBtn">
			<script type="text/javascript">
				$("#inputBtn").click(function () {
					var pageNo1=$("#pn_input").val();
					window.location.href="../../BookManagerServlet?method=getPageBooks&pageNo="+pageNo1;
                });
			</script>
		</div>
	</div>
	
	<div id="bottom">
		<span>
			yuxy.Copyright &copy;2018
		</span>
	</div>
</body>
</html>