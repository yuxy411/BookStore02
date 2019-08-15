<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>网络书城系统注册页面</title>
<link type="text/css" rel="stylesheet" href="css/style.css" >
<script type="text/javascript" src="../../js/jquery-1.7.2.js"></script>
	<script type="text/javascript">
		$(function () {
		    //用户注册检验，用户名和密码不能为空
			$("#sub_btn").click(function () {
			    //获取文本框中用户输入的用户名
                 var textInput=$("#username").val();
                 var emailtext=$("#email").val();
                 //判断用户名的正则表达式
				var userNameReg=/^[a-zA-Z0-9_-]{3,16}$/;
                var emailReg=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
                //验证用户名是否正确
				var flag=userNameReg.test(textInput);
                var flag1=emailReg.test(emailtext);
				if(!flag){
				   alert("用户名请输入3-16位的字母、数字、下划线或着减号的组合！");
				   return false;
				}
                if(!flag1){
                    alert("邮箱格式错误！");
                    return false;
                }
			});
        });
	</script>
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}
	
</style>
</head>
<body>
		<div id="login_header">
		</div>
		<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎注册</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>网络书城系统</h1>
								<span class="errorMsg">${sessionScope.message}  ${sessionScope.message}</span>
							</div>
							<div class="form">
								<form action="../../Register">
									<input class="itxt" type="hidden" name="method" value="regist">

									<label>用户名称：</label>
									<input value="<%=request.getParameter("username")==null?"":request.getParameter("username")%>" class="itxt" type="text" placeholder="请输入用户名" autocomplete="off" tabindex="1" name="username" id="username" />
									<br />
									<br />
									<label>用户密码：</label>
									<input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="password" id="password" />
									<br />
									<br />
									<label>确认密码：</label>
									<input class="itxt" type="password" placeholder="确认密码" autocomplete="off" tabindex="1" name="repwd" id="repwd" />
									<br />
									<br />
									<label>电子邮件：</label>
									<input value="<%=request.getParameter("email")==null?"":request.getParameter("email")%>" class="itxt" type="text" placeholder="请输入邮箱地址" autocomplete="off" tabindex="1" name="email" id="email" />
									<br />
									<br />
									<label>验证码：</label>
									<input class="itxt" type="text" style="width: 150px;" id="code" name="resCode"/>
									<img alt="" src="../../code.jpg" style="float: right; margin-right: 40px;width: 100px;height: 40px">
									<br />
									<br />
									<input type="submit" value="注册" id="sub_btn" />
									
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<div id="bottom">
			<span>
				yuxy.Copyright &copy;2018
			</span>
		</div>
</body>
</html>