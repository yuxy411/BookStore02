<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>编辑图书</title>
<link type="text/css" rel="stylesheet" href="../../static/css/style.css" >
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
	
	input {
		text-align: center;
	}
</style>
</head>
<body>

		<div id="header">
			<img class="logo_img" alt="" src="../../static/img/logo.gif" >
			<span class="wel_word">编辑图书</span>
			<div>
				<a href="../../BookManagerServlet?method=getBooks">图书管理</a>
				<a href="order_manager.jsp">订单管理</a>
				<a href="../../index.jsp">返回商城</a>
			</div>
		</div>
		
		<div id="main">
			<form action="../../BookManagerServlet" >
				<input type="hidden" name="method" value="updateBook">
                <input type="hidden" name="bookId" value="${requestScope.book1.id}">
				<table>
					<tr>
						<td>名称</td>
						<td>价格</td>
						<td>作者</td>
						<td>销量</td>
						<td>库存</td>
						<td colspan="2">操作</td>
					</tr>		
					<tr>
						<td><input name="title" type="text" value="${requestScope.book1.title}"/></td>
						<td><input name="price" type="text" value="${requestScope.book1.price}"/></td>
						<td><input name="author" type="text" value="${requestScope.book1.author}"/></td>
						<td><input name="sales" type="text" value="${requestScope.book1.sales}"/></td>
						<td><input name="stock" type="text" value="${requestScope.book1.stock}"/></td>
						<td><input type="submit" value="提交"/></td>
					</tr>		
				</table>
			</form>
			
	
		</div>
		
		<div id="bottom">
			<span>
				yuxy.Copyright &copy;2018
			</span>
		</div>
</body>
</html>