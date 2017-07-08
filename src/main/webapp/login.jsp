<%--
  Created by IntelliJ IDEA.
  User: saginardo
  Date: 2017/7/4
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>扬声器终端管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>

    <!--  <link rel="stylesheet" href="assets/css/style.css"> -->
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/signin.css">
    <link rel="shortcut icon" href="assets/ico/minus.png">
    <script src="assets/js/html5.js"></script>

</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<div class="container">
    <div class="" id="login-wrapper">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div id="logo-login">
                    <h1>扬声器设备管理系统
                        <span>v1.0</span>
                    </h1>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="account-box">
                    <form role="form" action="${pageContext.request.contextPath }/login.action" method="post">
                        <div class="form-group">
                            <label for="inputUsernameEmail">用户名</label>
                            <input type="text" id="inputUsernameEmail" name="username" class="form-control">
                        </div>
                        <div class="form-group">
                            <a href="#" class="pull-right label-forgot">忘记密码?</a>
                            <label for="inputPassword">密码</label>
                            <input type="password" id="inputPassword" name="password" class="form-control">
                        </div>
                        <button class="btn btn btn-primary pull-right" type="submit">
                            登 录
                        </button>
                    </form>
                    <div class="or-box">
                        <div align="center"><span class="text-center login-with">请登录系统或 <b><a href="${pageContext.request.contextPath }/register.jsp" >注册</a></b></span></div>
                        <div align="center" style="color:red"><p>${message}</p></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <p>&nbsp;</p>

</div>


<!--  END OF PAPER WRAP -->
<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>


</body>

</html>
