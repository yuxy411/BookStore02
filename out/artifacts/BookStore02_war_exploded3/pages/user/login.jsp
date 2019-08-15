<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>会员登录页面</title>
<link type="text/css" rel="stylesheet" href="css/style.css" >
	<script type="text/javascript" src="../../js/jquery-1.7.2.js"></script>
	<script type="text/javascript">
        $(function () {
            //用户注册检验，用户名和密码不能为空
            $("#sub_btn").click(function () {
                //获取文本框中用户输入的用户名
                var textInput=$("#username").val();
                //判断用户名的正则表达式
                var userNameReg=/^[a-zA-Z0-9_-]{3,16}$/;
                //验证用户名是否正确
                var flag=userNameReg.test(textInput);
                if(!flag){
                    alert("用户名请输入3-16位的字母、数字、下划线或者减号的组合！");
                    return false;
                }
            });
        });

	</script>
</head>
<body>
		<div id="login_header">
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎登录</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>网络书城系统</h1>
                                         <%--标题--%>
							</div>
							<div class="msg_cont">
								<b></b>
								<%--<span class="errorMsg">请输入用户名和密码</span>--%>
								<span class="errorMsg"><%=request.getAttribute("message")==null?"请输入用户名和密码":request.getAttribute("message")%></span>
							</div>
							<div class="form">
								<form action="../../Login" method="post">
									<input class="itxt" type="hidden" name="method" value="login">

									<label>用户名称：</label>
									<input value="<%=request.getParameter("username")==null?"":request.getParameter("username")%>" class="itxt" type="text" placeholder="请输入用户名" autocomplete="off" tabindex="1" name="username" id="username"/>
									<br />
									<br />
									<label>用户密码：</label>
									<input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="password"  id="password"/>
									<br />
									<br />
									<input type="submit" value="登录" id="sub_btn" />
									<div align="left">
										<a text-decoration="none"  href="regist.jsp">立即注册</a>
										<a  class="question" href="question.jsp">忘记密码？</a>
									</div>

								</form>
							</div>


						</div>
					</div>
				</div>
			</div>
		<div id="bottom">
			<span>
				yuxy.Copyright@2018
			</span>
		</div>
</body>
</html>