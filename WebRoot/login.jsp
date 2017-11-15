<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<jsp:include page="link.jsp"></jsp:include>
</head>

<body class="hold-transition login-page">


	<div class="login-box">
		<div class="login-logo">
			<a href="#"><b>HZJ</b>后台管理系统V1.0</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">在此输入你的登录信息</p>

			<form action="<%=basePath%>LoginServlet.action" method="post">
				<div class="form-group has-feedback">
					<input type="text" name="username" class="form-control" placeholder="账户名称">
					<span class="fa fa-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password" class="form-control" placeholder="账户密码">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="row">
					<div class="col-xs-6">
						<div class="form-group has-feedback">
							<input style="height: 50px" type="text" name="kaptcha" class="form-control"
								placeholder="输入验证码">
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-6">
						<img id="imgKaptcha"  onclick="setKaptcha()"  >
					</div>
					<!-- /.col -->
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> 记住我
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<!-- /.social-auth-links -->
			<a href="#">返回首页面</a><br>
			<p class="text-center">技术支持：2307800400</p>
		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->


	</body>
</html>

<jsp:include page="js.jsp"></jsp:include>

<script>


function setKaptcha(){
   
   $('#imgKaptcha').attr('src','<%=basePath%>KaptchaServlet.action?'+Math.floor(Math.random()*100));

}

    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
        
        
        setKaptcha();
        
        
    });
</script>
