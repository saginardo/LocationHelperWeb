<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: saginardo
  Date: 2017/7/7
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh_CN">

<head>
    <meta charset="utf-8">
    <title>设备管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/css/profile.css">

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
<!-- TOP NAVBAR -->
<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle"
                    type="button">
                <span class="entypo-menu"></span>
            </button>
            <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                <span class="entypo-list-add"></span>
            </button>


            <div id="logo-mobile" class="visible-xs">
                <h1>设备管理系统<span>v1.0</span></h1>
            </div>

        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">

                <li class="dropdown">

                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i style="font-size:20px;"
                                                                                  class="icon-conversation"></i>
                        <div class="noft-red">23</div>
                    </a>

                    <%--<ul style="margin: 11px 0 0 9px;" role="menu" class="dropdown-menu dropdown-wrap">
                        <li>
                            <a href="#">
                                <img alt="" class="img-msg img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/men/1.jpg">Jhon Doe <b>Just Now</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-msg img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/women/1.jpg">Jeniffer <b>3 Min
                                Ago</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-msg img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/men/2.jpg">Dave <b>2 Hours Ago</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-msg img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/men/3.jpg"><i>Keanu</i> <b>1 Day
                                Ago</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-msg img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/men/4.jpg"><i>Masashi</i> <b>2 Mounth
                                Ago</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div>See All Messege</div>
                        </li>
                    </ul>--%>
                </li>
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i style="font-size:19px;"
                                                                                  class="icon-warning tooltitle"></i>
                        <div class="noft-green">5</div>
                    </a>
                    <%--<ul style="margin: 12px 0 0 0;" role="menu" class="dropdown-menu dropdown-wrap">
                        <li>
                            <a href="#">
                                <span style="background:#DF2135" class="noft-icon maki-bus"></span><i>From Station</i>
                                <b>01B</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#AB6DB0" class="noft-icon maki-ferry"></span><i>Departing at</i>
                                <b>9:00 AM</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#FFA200" class="noft-icon maki-aboveground-rail"></span><i>Delay
                                for</i> <b>09 Min</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#86C440" class="noft-icon maki-airport"></span><i>Take of</i>
                                <b>08:30 AM</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#0DB8DF" class="noft-icon maki-bicycle"></span><i>Take of</i>
                                <b>08:30 AM</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div>See All Notification</div>
                        </li>
                    </ul>--%>
                </li>
                <li><a href="#"><i data-toggle="tooltip" data-placement="bottom" title="帮助" style="font-size:20px;"
                                   class="icon-help tooltitle"></i></a>
                </li>

            </ul>
            <div id="nt-title-container" class="navbar-left running-text visible-lg">
                <ul class="date-top">
                    <li class="entypo-calendar" style="margin-right:5px"></li>
                    <li id="Date"></li>
                </ul>

                <ul id="digital-clock" class="digital">
                    <li class="entypo-clock" style="margin-right:5px"></li>
                    <li class="hour"></li>
                    <li>:</li>
                    <li class="min"></li>
                    <li>:</li>
                    <li class="sec"></li>
                    <li class="meridiem"></li>
                </ul>

                <ul id="nt-title">
                    <%--<li><i class="wi-day-lightning"></i>&#160;&#160;Berlin&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>
                    <li><i class="wi-day-lightning"></i>&#160;&#160;Yogyakarta&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; Tonight- 72 °F (22.2 °C)
                    </li>

                    <li><i class="wi-day-lightning"></i>&#160;&#160;Sttugart&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>

                    <li><i class="wi-day-lightning"></i>&#160;&#160;Muchen&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>

                    <li><i class="wi-day-lightning"></i>&#160;&#160;Frankurt&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>--%>

                </ul>
            </div>

            <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" class="admin-pic img-circle"
                             src="assets/img/admin.jpg">您好, admin! <b
                            class="caret"></b>
                    </a>
                    <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <a href="#">
                                <span class="entypo-user"></span>&#160;&#160;我的信息</a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="entypo-vcard"></span>&#160;&#160;帐户设置</a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="entypo-lifebuoy"></span>&#160;&#160;帮助信息</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href=${pageContext.request.contextPath}/login.jsp>
                                <span class="entypo-logout"></span>&#160;&#160;注销登录</a>
                        </li>
                    </ul>
                </li>
                <%--<li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="icon-gear"></span>&#160;&#160;Setting</a>
                    <ul role="menu" class="dropdown-setting dropdown-menu">

                        <li class="theme-bg">
                            <div id="button-bg"></div>
                            <div id="button-bg2"></div>
                            <div id="button-bg3"></div>
                            <div id="button-bg5"></div>
                            <div id="button-bg6"></div>
                            <div id="button-bg7"></div>
                            <div id="button-bg8"></div>
                            <div id="button-bg9"></div>
                            <div id="button-bg10"></div>
                            <div id="button-bg11"></div>
                            <div id="button-bg12"></div>
                            <div id="button-bg13"></div>
                        </li>
                    </ul>
                </li>
                <li class="hidden-xs">
                    <a class="toggle-left" href="#">
                        <span style="font-size:20px;" class="entypo-list-add"></span>
                    </a>
                </li>--%>
            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- /END OF TOP NAVBAR -->

<!-- SIDE MENU -->
<div id="skin-select">
    <div id="logo">
        <h1>设备管理
            <span>v1.0</span>
        </h1>
    </div>

    <a id="toggle">
        <span class="entypo-menu"></span>
    </a>
    <div class="dark">
        <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search"
                           placeholder="面板功能搜索..." autofocus="">
                </span>
        </form>
    </div>

    <div class="search-hover">
        <form id="demo-2">
            <input type="search" placeholder="面板功能搜索..." class="id_search">
        </form>
    </div>

    <div class="skin-part">
        <div id="tree-wrap">
            <div class="side-bar">
                <ul class="topnav menu-left-nest">
                    <%--<li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                            <span class="widget-menu"></span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                        </a>
                    </li>--%>

                    <li>
                        <a class="tooltip-tip ajax-load" href="#" title="Blog App">
                            <i class="icon-document-edit"></i>
                            <span>设备管理</span>

                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load"
                                   href=${pageContext.request.contextPath}/queryDevices.action title="全部设备"><i
                                        class="entypo-doc-text"></i><span>全部设备</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href=${pageContext.request.contextPath}/queryOffLineDevices.action title="离线设备"><i
                                        class="entypo-newspaper"></i><span>离线设备</span></a>
                            </li>
                        </ul>
                    </li>
<%--                    <li>
                        <a class="tooltip-tip ajax-load" href="#" title="测试页面3">
                            <i class="icon-feed"></i>
                            <span>测试页面3</span>

                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="#" title="测试页面4">
                            <i class="icon-camera"></i>
                            <span>测试页面4</span>

                        </a>
                    </li>--%>
                </ul>

                <%--<ul class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                            <span class="design-kit"></span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="index.html" title="Dashboard">
                            <i class="icon-window"></i>
                            <span>Dashboard</span>

                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="mail.html" title="Mail">
                            <i class="icon-mail"></i>
                            <span>mail</span>
                            <div class="noft-blue">289</div>
                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="icon.html" title="Icons">
                            <i class="icon-preview"></i>
                            <span>Icons</span>
                            <div class="noft-blue" style="display: inline-block; float: none;">New</div>
                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip" href="#" title="Extra Pages">
                            <i class="icon-document-new"></i>
                            <span>Extra Page</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="blank_page.html" title="Blank Page"><i
                                        class="icon-media-record"></i><span>Blank Page</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="profile.html" title="Profile Page"><i
                                        class="icon-user"></i><span>Profile Page</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="invoice.html" title="Invoice"><i
                                        class="entypo-newspaper"></i><span>Invoice</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="pricing_table.html" title="Pricing Table"><i
                                        class="fontawesome-money"></i><span>Pricing Table</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="time-line.html" title="Time Line"><i
                                        class="entypo-clock"></i><span>Time Line</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2" href="404.html" title="404 Error Page"><i
                                        class="icon-thumbs-down"></i><span>404 Error Page</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2" href="500.html" title="500 Error Page"><i
                                        class="icon-thumbs-down"></i><span>500 Error Page</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2" href="lock-screen.html" title="Lock Screen"><i
                                        class="icon-lock"></i><span>Lock Screen</span></a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a class="tooltip-tip " href="login.html" title="login">
                            <i class="icon-download"></i>
                            <span>Login</span>
                        </a>
                    </li>

                </ul>--%>

                <%--<ul id="menu-showhide" class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                            <span class="component"></span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                        </a>
                    </li>


                    <li>
                        <a class="tooltip-tip" href="#" title="UI Element">
                            <i class="icon-monitor"></i>
                            <span>UI Element</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="element.html" title="Element"><i
                                        class="icon-attachment"></i><span>Element</span></a>
                            </li>
                            <li><a class="tooltip-tip2 ajax-load" href="button.html" title="Button"><i
                                    class="icon-view-list-large"></i><span>Button</span>
                                <div class="noft-blue-number">10</div>
                            </a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="wizard.html" title="Tab & Accordion"><i
                                        class="icon-folder"></i><span>Wizard</span>
                                    <div class="noft-purple-number">3</div>
                                </a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="calendar.html" title="Calender"><i
                                        class="icon-calendar"></i><span>Calendar</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="tree.html" title="Tree View"><i
                                        class="icon-view-list"></i><span>Tree View</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="grids.html" title="Grids"><i
                                        class="icon-menu"></i><span>Grids</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="chart.html" title="Chart"><i
                                        class="icon-graph-pie"></i><span>Chart</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip ajax-load" href="typhography.html" title="Typhoghrapy">
                                    <i class="icon-information"></i>
                                    <span>Typhoghrapy</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="tooltip-tip" href="#" title="Form">
                            <i class="icon-document"></i>
                            <span>Form</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="form-element.html" title="Form Elements"><i
                                        class="icon-document-edit"></i><span>Form Elements</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="andvance-form.html" title="Andvance Form"><i
                                        class="icon-map"></i><span>Andvance Form</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="text-editor.html" title="Text Editor"><i
                                        class="icon-code"></i><span>Text Editor</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="file-upload.html" title="File Upload"><i
                                        class="icon-upload"></i><span>File Upload</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="tooltip-tip" href="#" title="Tables">
                            <i class="icon-view-thumb"></i>
                            <span>Tables</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="table-static.html" title="Table Static"><i
                                        class="entypo-layout"></i><span>Table Static</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="table-dynamic.html" title="Table Dynamic"><i
                                        class="entypo-menu"></i><span>Table Dynamic</span></a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="map.html" title="Map">
                            <i class="icon-location"></i>
                            <span>Map</span>

                        </a>
                    </li>
                </ul>--%>

                <%--<div class="side-dash">
                    <h3>
                        <span>Device</span>
                    </h3>
                    <ul class="side-dashh-list">
                        <li>Avg. Traffic
                            <span>25k<i style="color:#44BBC1;" class="fa fa-arrow-circle-up"></i>
                                </span>
                        </li>
                        <li>Visitors
                            <span>80%<i style="color:#AB6DB0;" class="fa fa-arrow-circle-down"></i>
                                </span>
                        </li>
                        <li>Convertion Rate
                            <span>13m<i style="color:#19A1F9;" class="fa fa-arrow-circle-up"></i>
                                </span>
                        </li>
                    </ul>
                    <h3>
                        <span>Traffic</span>
                    </h3>
                    <ul class="side-bar-list">
                        <li>Avg. Traffic
                            <div class="linebar">5,7,8,9,3,5,3,8,5</div>
                        </li>
                        <li>Visitors
                            <div class="linebar2">9,7,8,9,5,9,6,8,7</div>
                        </li>
                        <li>Convertion Rate
                            <div class="linebar3">5,7,8,9,3,5,3,8,5</div>
                        </li>
                    </ul>
                    <h3>
                        <span>Visitors</span>
                    </h3>
                    <div id="g1" style="height:180px" class="gauge"></div>
                </div>--%>
            </div>
        </div>
    </div>
</div>
<!-- END OF SIDE MENU -->


<!--  PAPER WRAP -->
<div class="wrap-fluid">
    <div class="container-fluid paper-wrap bevel tlbr">


        <!-- CONTENT -->
        <!--TITLE -->
        <div class="row">
            <div id="paper-top">
                <div class="col-sm-3">
                    <h2 class="tittle-content-header">
                        <i class="icon-media-record"></i>
                        <span>设备管理
                            </span>
                    </h2>

                </div>

                <div class="col-sm-7">
                    <div class="devider-vertical visible-lg"></div>
                    <div class="tittle-middle-header">

                        <div class="alert">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <span class="tittle-alert entypo-info-circled"></span>
                            欢迎回来,&nbsp;
                            <strong>admin!</strong>&nbsp;&nbsp;<%--您上次登录时间是 昨天, 16:54 PM--%>
                        </div>


                    </div>

                </div>
                <div class="col-sm-2">
                    <div class="devider-vertical visible-lg"></div>
                    <%--<div class="btn-group btn-wigdet pull-right visible-lg">
                        <div class="btn">
                            Widget
                        </div>
                        <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <ul role="menu" class="dropdown-menu">
                            <li>
                                <a href="#">
                                    <span class="entypo-plus-circled margin-iconic"></span>Add New</a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="entypo-heart margin-iconic"></span>Favorite</a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="entypo-cog margin-iconic"></span>Setting</a>
                            </li>
                        </ul>
                    </div>--%>

                </div>
            </div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li>
                <span class="entypo-home"></span>
            </li>
            <li><i class="fa fa-lg fa-angle-right"></i>
            </li>
            <li><a href=${pageContext.request.contextPath }/queryDevices.action >设备管理</a>
            </li>
            <li><i class="fa fa-lg fa-angle-right"></i>
            </li>
            <li><a href="#" >编辑设备</a>
            </li>
            <%--            <li class="pull-right">
                            <div class="input-group input-widget">

                                <input style="border-radius:15px" type="text" placeholder="搜索设备..." class="form-control">
                            </div>
                        </li>--%>
        </ul>

        <!-- END OF BREADCRUMB -->

        <div class="content-wrap">
            <!-- PROFILE -->
            <div class="row">
                <%--                <div class="col-sm-12">
                                    <div class="well profile">
                                        <div class="col-sm-12">
                                            <div class="col-xs-12 col-sm-4 text-center">

                                                <ul class="list-group">
                                                    <li class="list-group-item text-left">
                                                        <span class="entypo-user"></span>&nbsp;&nbsp;Profile
                                                    </li>
                                                    <li class="list-group-item text-center">
                                                        <img src="http://api.randomuser.me/portraits/men/10.jpg" alt=""
                                                             class="img-circle img-responsive img-profile">

                                                    </li>
                                                    <li class="list-group-item text-center">
                                                            <span class="pull-left">
                                                                <strong>Ratings</strong>
                                                            </span>


                                                        <div class="ratings">

                                                            <a href="#">
                                                                <span class="fa fa-star"></span>
                                                            </a>
                                                            <a href="#">
                                                                <span class="fa fa-star"></span>
                                                            </a>
                                                            <a href="#">
                                                                <span class="fa fa-star"></span>
                                                            </a>
                                                            <a href="#">
                                                                <span class="fa fa-star"></span>
                                                            </a>
                                                            <a href="#">
                                                                <span class="fa fa-star-o"></span>
                                                            </a>

                                                        </div>


                                                    </li>

                                                    <li class="list-group-item text-right">
                                                            <span class="pull-left">
                                                                <strong>Joined</strong>
                                                            </span>2.13.2014
                                                    </li>
                                                    <li class="list-group-item text-right">
                                                            <span class="pull-left">
                                                                <strong>Last seen</strong>
                                                            </span>Yesterday
                                                    </li>
                                                    <li class="list-group-item text-right">
                                                            <span class="pull-left">
                                                                <strong>Nickname</strong>
                                                            </span>themesmile
                                                    </li>

                                                </ul>

                                            </div>
                                            <div class="col-xs-12 col-sm-8 profile-name">
                                                <h2>Dave Mattew
                                                    <span class="pull-right social-profile">
                                                            <i class="entypo-facebook-circled"></i>  <i
                                                            class="entypo-twitter-circled"></i>  <i class="entypo-linkedin-circled"></i>  <i
                                                            class="entypo-github-circled"></i>  <i class="entypo-gplus-circled"></i>
                                                        </span>
                                                </h2>
                                                <hr>

                                                <dl class="dl-horizontal-profile">
                                                    <dt>User Id</dt>
                                                    <dd>eko.sulis</dd>

                                                    <dt>Name</dt>
                                                    <dd>Eko Sulistyo</dd>

                                                    <dt>Email</dt>
                                                    <dd>eko.sulistyo@yahoo.com</dd>

                                                    <dt>Phone</dt>
                                                    <dd>081 725 xxx</dd>

                                                    <dt>Active Periode</dt>
                                                    <dd>02 Dec 2014</dd>

                                                    <dt>Last Update</dt>
                                                    <dd>02 Apr 2014</dd>

                                                    <dt>About</dt>
                                                    <dd>Web Designer / UI</dd>

                                                    <dt>Hobbies</dt>
                                                    <dd>Read, out with friends, listen to music, draw and learn new things</dd>

                                                    <dt>Skills</dt>
                                                    <dd>
                                                        <span class="tags">html5</span>
                                                        <span class="tags">css3</span>
                                                        <span class="tags">jquery</span>
                                                        <span class="tags">bootstrap3</span>
                                                    </dd>

                                                </dl>


                                                <hr>

                                                <h5>
                                                    <span class="entypo-arrows-ccw"></span>&nbsp;&nbsp;Recent Activities</h5>

                                                <div class="table-responsive">
                                                    <table class="table table-hover table-striped table-condensed">

                                                        <tbody>
                                                        <tr>
                                                            <td><i class="pull-right fa fa-edit"></i> Today, 1:00 - Jeff Manzi liked
                                                                your post.
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="pull-right fa fa-edit"></i> Today, 12:23 - Mark Friendo liked
                                                                and shared your post.
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="pull-right fa fa-edit"></i> Today, 12:20 - You posted a new
                                                                blog entry title "Why social media is".
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="pull-right fa fa-edit"></i> Yesterday - Karen P. liked your
                                                                post.
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="pull-right fa fa-edit"></i> 2 Days Ago - Philip W. liked your
                                                                post.
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="pull-right fa fa-edit"></i> 2 Days Ago - Jeff Manzi liked your
                                                                post.
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </div>

                                        </div>
                                        <div class="col-xs-12 divider text-center">
                                            <div class="col-xs-12 col-sm-4 emphasis">
                                                <h2>
                                                    <strong>20,7K</strong>
                                                </h2>
                                                <p>
                                                    <small>Followers</small>
                                                </p>
                                                <button class="btn btn-success btn-block">
                                                    <span class="fa fa-plus-circle"></span>&nbsp;&nbsp;Follow
                                                </button>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 emphasis">
                                                <h2>
                                                    <strong>245</strong>
                                                </h2>
                                                <p>
                                                    <small>Following</small>
                                                </p>
                                                <button class="btn btn-info btn-block">
                                                    <span class="fa fa-user"></span>&nbsp;&nbsp;View Profile
                                                </button>
                                            </div>
                                            <div class="col-sm-4 emphasis">
                                                <h2>
                                                    <strong>43</strong>
                                                </h2>
                                                <p>
                                                    <small>Likes</small>
                                                </p>
                                                <button class="btn btn-default btn-block">
                                                    <span class="fa fa-user"></span>&nbsp;&nbsp;Likes
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>--%>
                <div class="row">
                    <div class="col-sm-12">
                        <!-- BLANK PAGE-->
                        <div style="margin:-20px 15px;" class="nest" id="Blank_PageClose">
                            <div class="title-alt">
                                <h6>
                                    编辑设备信息</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#Blank_PageClose">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#Blank_Page_Content">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>
                            </div>

                            <div class="body-nest" id="Blank_Page_Content">
                                <div class="row">
                                    <!-- 左边栏上传页面 -->
                                    <div class="col-md-3">
                                        <div class="text-center">
                                            <img src="assets/img/150.png" class="avatar img-circle" alt="avatar">
                                            <h6>请上传设备照片...</h6>

                                            <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <span class="btn btn-primary btn-file">
                                                            本地浏览
                                                            <input type="file" multiple="">
                                                        </span>
                                                    </span>
                                                <input type="text" class="form-control">
                                            </div>

                                        </div>
                                    </div>

                                    <!-- edit form column -->
                                    <div class="col-md-9 personal-info">
                                        <div class="alert alert-info alert-dismissable">
                                            <a class="panel-close close" data-dismiss="alert">×</a>
                                            <i class="fa fa-coffee"></i>
                                            <strong>
                                                <spring:hasBindErrors name="device">
                                                    <c:forEach items="${errors.allErrors}" var="error">
                                                        ${error.defaultMessage }<br/>
                                                    </c:forEach>
                                                </spring:hasBindErrors>
                                            </strong>
                                        </div>
                                        <h3>设备信息</h3>

                                        <form id="editDevice" class="form-horizontal" role="form"
                                              action="${pageContext.request.contextPath }/editDeviceSubmit.action"
                                              method="post">
                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">设备编号:</label>
                                                <div class="col-lg-8">
                                                    <input name="deviceId" class="form-control"
                                                           value=${device.deviceId} type="text">
                                                </div>
                                            </div>
                                            <%--查询数据库，让用户选择修改管理员--%>
                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">设备管理员:</label>
                                                <div class="col-lg-8">
                                                    <div class="ui-select">
                                                        <select name="user.username" id="username" class="form-control"
                                                                form="editDevice">
                                                            <c:forEach items="${usernames}" var="name">
                                                                <c:choose>
                                                                    <c:when test="${device.user.username eq name}">
                                                                        <option value=${name} selected="selected">${name}</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <option value=${name}>${name}</option>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">设备MAC地址:</label>
                                                <div class="col-lg-8">
                                                    <input name="macAddress" class="form-control"
                                                           value=${device.macAddress} type="text">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">设备纬度:</label>
                                                <div class="col-lg-8">
                                                    <input name="latitude" class="form-control"
                                                           value=${device.latitude }
                                                                   type="text">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">设备经度:</label>
                                                <div class="col-md-8">
                                                    <input name="longitude" class="form-control"
                                                           value=${device.longitude } type="text">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">设备在线状态:</label>
                                                <div class="col-md-8">
                                                    <select name="online" id="online" class="form-control">
                                                        <c:choose>
                                                            <c:when test="${device.online eq true}">
                                                                <option value=true selected="selected">在线
                                                                </option>
                                                                <option value=false>离线</option>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <option value=true>在线</option>
                                                                <option value=false selected="selected">离线
                                                                </option>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </select>
                                                </div>
                                            </div>

                                            <input type="hidden" name="id" class="form-control" value=${device.id }>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label"></label>
                                                <div class="col-md-8">
                                                    <input class="btn btn-primary" value="保存更改" type="submit">
                                                    <span></span>
                                                    <input class="btn btn-default" value="清除修改" type="reset">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END OF BLANK PAGE -->

                </div>
            </div>
            <!-- END OF PROFILE -->


            <!-- /END OF CONTENT -->


            <!-- FOOTER -->
            <div class="footer-space"></div>
            <div id="footer">
                <div class="devider-footer-left"></div>
                <div class="time">
                    <p id="spanDate">
                    <p id="clock">
                </div>
                <div class="copyright">设备管理系统&nbsp;&nbsp;All Rights Reserved
                </div>
                <div class="devider-footer"></div>

            </div>
            <!-- / END OF FOOTER -->

        </div>
    </div>
    <!--  END OF PAPER WRAP -->


    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>

</div>
</body>

</html>
