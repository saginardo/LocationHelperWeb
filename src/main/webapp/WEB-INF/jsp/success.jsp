<%--
  Created by IntelliJ IDEA.
  User: saginardo
  Date: 2017/4/6
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Apricot v1.2</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <style type="text/css">
        body {
            overflow: hidden !important;
            padding-top: 120px;
        }
    </style>
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/signin.css">
    <link rel="stylesheet" href="assets/css/extra-pages.css">


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="assets/js/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body>

<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>


<div class="logo-error">
    <h1>设备管理系统
        <span>v1.0</span>
    </h1>
</div>

<!-- Main content -->
<section class="page-error">

    <div class="error-page">
        <h2 class="headline text-info">修改成功</h2>
        <div class="error-content">
            <h3></i> 修改设备信息成功，点击这里回到<a href=${pageContext.request.contextPath}/queryDevices.action> 首页</a></h3>

        </div>
        <!-- /.error-content -->
    </div>
    <!-- /.error-page -->

</section>


<!--  END OF PAPER WRAP -->

<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>


</body>

</html>

