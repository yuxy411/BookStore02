<%@ page import="dao.impl.BookDaoImpl" %>
<%@ page import="beans.Book1" %>
<%@ page import="java.util.List" %>
<%@ page import="beans.Book" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/10/8
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
      BookDaoImpl b=new BookDaoImpl();
      List<Book> list=b.getBooks();



  %>
<%=list.size()%>
</body>
</html>
