<%--
  Created by IntelliJ IDEA.
  User: saginardo
  Date: 2017/7/4
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    <form role="form" action="${pageContext.request.contextPath }/register.action" method="post">
                        <div class="form-group">
                            <%--<a href="#" class="pull-right label-forgot">Forgot email?</a>--%>
                            <label for="username">请输入用户名</label>
                            <input id="username" class="form-control" name="username" type="text"
                                   placeholder="5到18位字母或数字">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">请输入密码</label>
                            <input type="password" id="inputPassword" name="password" class="form-control"
                                   placeholder="6到16位字母或数字">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword2">请再输入一次密码</label>
                            <input type="password" id="inputPassword2" name="password2" class="form-control"
                                   onkeyup="validatePassword()">
                        </div>
                        <div class="form-group">
                            <label for="emailAddress">请输入邮箱</label>
                            <input id="emailAddress" class="form-control" name="emailAddress" type="email">
                        </div>
                        <div class="form-group">
                            <label for="emailAddress2">请再输入一次邮箱</label>
                            <input id="emailAddress2" class="form-control" name="emailAddress2" type="email"
                                   onkeyup="validateEmail()">
                        </div>

                        <button id="register" class="btn btn btn-primary pull-right" type="submit" name="register">
                            注册
                        </button>
                    </form>
                    <div class="or-box">
                        <div align="center"><span class="text-center login-with">请注册账户或 <b><a
                                href="${pageContext.request.contextPath }/login.jsp">登录</a></b></span></div>
                        <div align="center" style="color:red"><p>
                            <spring:hasBindErrors name="user">
                                <c:forEach items="${errors.allErrors}" var="error">
                                    ${error.defaultMessage }<br/>
                                </c:forEach>
                            </spring:hasBindErrors>
                            ${error}
                            <span id="message"></span>
                        </p></div>
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

<script type="text/javascript">
    function validatePassword() {
        var pwd1 = document.getElementById("inputPassword").value;
        var pwd2 = document.getElementById("inputPassword2").value;


        <!-- 对比两次输入的密码 -->
        if (pwd1 == pwd2) {
            document.getElementById("message").innerHTML = "<span>&nbsp;</span>";
            document.getElementById("register").disabled = false;
        }
        else {
            document.getElementById("message").innerHTML = "<font color='red'>两次输入密码不相同</font>";
            document.getElementById("register").disabled = true;
        }

    }
    function validateEmail() {
        var ed1 = document.getElementById("emailAddress").value;
        var ed2 = document.getElementById("emailAddress2").value;
        if (ed1 == ed2) {
            document.getElementById("message").innerHTML = "<span>&nbsp;</span>";
            document.getElementById("register").disabled = false;
        }
        else {
            document.getElementById("message").innerHTML = "<font color='red'>两次输入邮箱不相同</font>";
            document.getElementById("register").disabled = true;
        }
    }

</script>

</body>

</html>
