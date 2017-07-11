<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: saginardo
  Date: 2017/7/6
  Time: 21:22
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


    <link href="assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="assets/js/dataTable/css/datatables.responsive.css">


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
                    <%--消息列表--%>
                    <%--<ul style="margin: 11px 0 0 9px;" role="menu" class="dropdown-menu dropdown-wrap">
                        <li>
                            <a href="#">
                                <img alt="" class="img-message img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/men/1.jpg">Jhon Doe <b>Just Now</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-message img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/women/1.jpg">Jeniffer <b>3 Min
                                Ago</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-message img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/men/2.jpg">Dave <b>2 Hours Ago</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-message img-circle"
                                     src="http://api.randomuser.me/portraits/thumb/men/3.jpg"><i>Keanu</i> <b>1 Day
                                Ago</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <img alt="" class="img-message img-circle"
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
                    <%--通知列表--%>
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
                <%--帮助菜单--%>
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
                                <span class="entypo-vcard"></span>&#160;&#160;账户设置</a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="entypo-lifebuoy"></span>&#160;&#160;帮助信息</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href=${pageContext.request.contextPath}/logout.action>
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
        <h1>设备管理<span>v1.0</span></h1>
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
                    <li>
                        <a class="tooltip-tip2 ajax-load"
                           href=${pageContext.request.contextPath}/queryDevices.action title="全部设备"><i
                                class="entypo-doc-text"></i><span>全部设备</span></a>
                    </li>

                </ul>

                <ul class="topnav menu-left-nest">
                    <li>
                        <a class="tooltip-tip2 ajax-load"
                           href=${pageContext.request.contextPath}/queryOffLineDevices.action
                           title="离线设备"><i
                                class="entypo-newspaper"></i><span>离线设备</span></a>
                    </li>
                </ul>

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
                                <a class="tooltip-tip2 ajax-load" href="../../../element.html" title="Element"><i
                                        class="icon-attachment"></i><span>Element</span></a>
                            </li>
                            <li><a class="tooltip-tip2 ajax-load" href="../../../button.html" title="Button"><i
                                    class="icon-view-list-large"></i><span>Button</span>
                                <div class="noft-blue-number">10</div>
                            </a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../wizard.html" title="Tab & Accordion"><i
                                        class="icon-folder"></i><span>Wizard</span>
                                    <div class="noft-purple-number">3</div>
                                </a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../calendar.html" title="Calender"><i
                                        class="icon-calendar"></i><span>Calendar</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../tree.html" title="Tree View"><i
                                        class="icon-view-list"></i><span>Tree View</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../grids.html" title="Grids"><i
                                        class="icon-menu"></i><span>Grids</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../chart.html" title="Chart"><i
                                        class="icon-graph-pie"></i><span>Chart</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip ajax-load" href="../../../typhography.html" title="Typhoghrapy">
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
                                <a class="tooltip-tip2 ajax-load" href="../../../form-element.html"
                                   title="Form Elements"><i
                                        class="icon-document-edit"></i><span>Form Elements</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../andvance-form.html"
                                   title="Andvance Form"><i
                                        class="icon-map"></i><span>Andvance Form</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../text-editor.html"
                                   title="Text Editor"><i
                                        class="icon-code"></i><span>Text Editor</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../file-upload.html"
                                   title="File Upload"><i
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
                                <a class="tooltip-tip2 ajax-load" href="../../../table-static.html"
                                   title="Table Static"><i
                                        class="entypo-layout"></i><span>Table Static</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="../../../table-dynamic.html"
                                   title="Table Dynamic"><i
                                        class="entypo-menu"></i><span>Table Dynamic</span></a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="../../../map.html" title="Map">
                            <i class="icon-location"></i>
                            <span>Map</span>

                        </a>
                    </li>
                </ul>--%>


                <%-- <div class="side-dash">
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
                        <span class="entypo-menu"></span>
                        <span>设备列表
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
                            <strong> admin!</strong>&nbsp;&nbsp;<%--您上次登录时间是 昨天, 16:54 PM--%>
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
            <li><a href=${pageContext.request.contextPath }/queryDevices.action>主页</a>
            </li>
            <li><i class="fa fa-lg fa-angle-right"></i>
            </li>
            <li><a href="#">全部设备</a>
            </li>
            <li class="pull-right">
                <div class="input-group input-widget">
                    <form id="searchForm" action="${pageContext.request.contextPath }/queryDevice.action" method="post">
                        <input name="deviceId" style="border-radius:15px" type="text" placeholder="搜索设备..."
                               class="form-control">
                    </form>
                </div>
            </li>
        </ul>

        <!-- END OF BREADCRUMB -->


        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">
                    <div class="nest" id="FootableClose">
                        <div class="title-alt">
                            <h6>
                                设备列表</h6>
                            <%--<div class="titleClose">
                                <a class="gone" href="#FootableClose">
                                    <span class="entypo-cancel"></span>
                                </a>
                            </div>--%>
                            <div class="titleToggle">
                                <a class="nav-toggle-alt" href="#Footable">
                                    <span class="entypo-up-open"></span>
                                </a>
                            </div>
                        </div>

                        <div class="body-nest" id="Footable">  <%--body-nest为表格样式--%>

                            <%--<p class="lead well">FooTable is a jQuery plugin that aims to make HTML tables on smaller
                                devices look awesome - No matter how many columns of data you may have in them. And it's
                                responsive i think this better than DataTable in some way</p>--%>

                            <table class="table-striped footable-res footable metro-blue" data-page-size="10">
                                <thead>
                                <tr>
                                    <th>设备号</th>
                                    <th>设备管理员</th>
                                    <th>设备MAC地址</th>
                                    <th>设备纬度</th>
                                    <th>设备经度</th>
                                    <th>设备状态</th>
                                    <th>设备创健时间</th>
                                    <th>设备更新时间</th>
                                    <th>设备操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${deviceList }" var="device">
                                <tr>
                                    <td>${device.deviceId }</td>
                                    <td>${device.user.username }</td>
                                    <td>${device.macAddress }</td>
                                    <td>${device.latitude }</td>
                                    <td>${device.longitude }</td>
                                        <%--<td>${device.online }</td>--%>
                                    <c:choose>
                                        <c:when test="${device.online eq false}">
                                            <td data-value="0">
                                                <span class="status-metro status-suspended">离线</span>
                                            </td>
                                        </c:when>
                                        <c:otherwise>
                                            <td data-value="1">
                                                <span class="status-metro status-active">在线</span>
                                            </td>
                                        </c:otherwise>
                                    </c:choose>
                                    <td><fmt:formatDate value="${device.createTime}"
                                                        pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                    <td><fmt:formatDate value="${device.updateTime}"
                                                        pattern="yyyy-MM-dd HH:mm:ss"/></td>

                                        <%--<td><fmt:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>--%>
                                    <td>
                                        <a href="${pageContext.request.contextPath }/editDevice.action?id=${device.id}"><span
                                                class="fontawesome-edit" title="修改设备"></span></a>
                                        &nbsp;
                                        <a href="${pageContext.request.contextPath }/deleteDevice.action?id=${device.id}"><span
                                                class="fontawesome-trash" title="删除设备"></span></a>
                                    </td>

                                </tr>
                                </c:forEach>


                                <%--<tr>
                                    <td>Isidra</td>
                                    <td><a href="#">Boudreaux</a>
                                    </td>
                                    <td>Traffic Court Referee</td>
                                    <td data-value="78025368997">22 Jun 1972</td>
                                    <td data-value="1">
                                        <span class="status-metro status-active" title="Active">Active</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Shona</td>
                                    <td>Woldt</td>
                                    <td><a href="#">Airline Transport Pilot</a>
                                    </td>
                                    <td data-value="370961043292">3 Oct 1981</td>
                                    <td data-value="2">
                                        <span class="status-metro status-disabled" title="Disabled">Disabled</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Granville</td>
                                    <td>Leonardo</td>
                                    <td>Business Services Sales Representative</td>
                                    <td data-value="-22133780420">19 Apr 1969</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Easer</td>
                                    <td>Dragoo</td>
                                    <td>Drywall Stripper</td>
                                    <td data-value="250833505574">13 Dec 1977</td>
                                    <td data-value="1">
                                        <span class="status-metro status-active" title="Active">Active</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Maple</td>
                                    <td>Halladay</td>
                                    <td>Aviation Tactical Readiness Officer</td>
                                    <td data-value="694116650726">30 Dec 1991</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Maxine</td>
                                    <td><a href="#">Woldt</a>
                                    </td>
                                    <td><a href="#">Business Services Sales Representative</a>
                                    </td>
                                    <td data-value="561440464855">17 Oct 1987</td>
                                    <td data-value="2">
                                        <span class="status-metro status-disabled" title="Disabled">Disabled</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lorraine</td>
                                    <td>Mcgaughy</td>
                                    <td>Hemodialysis Technician</td>
                                    <td data-value="437400551390">11 Nov 1983</td>
                                    <td data-value="2">
                                        <span class="status-metro status-disabled" title="Disabled">Disabled</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lizzee</td>
                                    <td><a href="#">Goodlow</a>
                                    </td>
                                    <td>Technical Services Librarian</td>
                                    <td data-value="-257733999319">1 Nov 1961</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Judi</td>
                                    <td>Badgett</td>
                                    <td>Electrical Lineworker</td>
                                    <td data-value="362134712000">23 Jun 1981</td>
                                    <td data-value="1">
                                        <span class="status-metro status-active" title="Active">Active</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lauri</td>
                                    <td>Hyland</td>
                                    <td>Blackjack Supervisor</td>
                                    <td data-value="500874333932">15 Nov 1985</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                </tbody>--%>

                                <%--表格的边角线--%>
                                <tfoot>
                                <tr>
                                    <td colspan="9">
                                        <div class="pagination pagination-centered"></div>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>

                        </div>

                    </div>

                </div>

            </div>
        </div>


        <%--<div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">
                    <div class="nest" id="FilteringClose">
                        <div class="title-alt">
                            <h6>
                                Footable Filtering</h6>
                            <div class="titleClose">
                                <a class="gone" href="#FilteringClose">
                                    <span class="entypo-cancel"></span>
                                </a>
                            </div>
                            <div class="titleToggle">
                                <a class="nav-toggle-alt" href="#Filtering">
                                    <span class="entypo-up-open"></span>
                                </a>
                            </div>

                        </div>

                        <div class="body-nest" id="Filtering">

                            <div class="row" style="margin-bottom:10px;">
                                <div class="col-sm-4">
                                    <input class="form-control" id="filter" placeholder="Search..." type="text">
                                </div>
                                <div class="col-sm-2">
                                    <select class="filter-status form-control">
                                        <option value="active">Active
                                        <option value="disabled">Disabled
                                        <option value="suspended">Suspended
                                    </select>
                                </div>
                                <div class="col-sm-6">

                                    <a href="#clear" style="margin-left:10px;"
                                       class="pull-right btn btn-info clear-filter" title="clear filter">clear</a>
                                    <a href="#api" class="pull-right btn btn-info filter-api"
                                       title="Filter using the Filter API">filter API</a>


                                </div>

                            </div>

                            <table id="footable-res2" class="demo" data-filter="#filter" data-filter-text-only="true">
                                <thead>
                                <tr>
                                    <th data-toggle="true">
                                        First Name
                                    </th>
                                    <th>
                                        Last Name
                                    </th>
                                    <th data-hide="phone,tablet">
                                        Job Title
                                    </th>
                                    <th data-hide="phone,tablet">
                                        DOB
                                    </th>
                                    <th data-hide="phone">
                                        Status
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Isidra</td>
                                    <td><a href="#">Boudreaux</a>
                                    </td>
                                    <td>Traffic Court Referee</td>
                                    <td data-value="78025368997">22 Jun 1972</td>
                                    <td data-value="1">
                                        <span class="status-metro status-active" title="Active">Active</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Shona</td>
                                    <td>Woldt</td>
                                    <td><a href="#">Airline Transport Pilot</a>
                                    </td>
                                    <td data-value="370961043292">3 Oct 1981</td>
                                    <td data-value="2">
                                        <span class="status-metro status-disabled" title="Disabled">Disabled</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Granville</td>
                                    <td>Leonardo</td>
                                    <td>Business Services Sales Representative</td>
                                    <td data-value="-22133780420">19 Apr 1969</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Easer</td>
                                    <td>Dragoo</td>
                                    <td>Drywall Stripper</td>
                                    <td data-value="250833505574">13 Dec 1977</td>
                                    <td data-value="1">
                                        <span class="status-metro status-active" title="Active">Active</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Maple</td>
                                    <td>Halladay</td>
                                    <td>Aviation Tactical Readiness Officer</td>
                                    <td data-value="694116650726">30 Dec 1991</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Maxine</td>
                                    <td><a href="#">Woldt</a>
                                    </td>
                                    <td><a href="#">Business Services Sales Representative</a>
                                    </td>
                                    <td data-value="561440464855">17 Oct 1987</td>
                                    <td data-value="2">
                                        <span class="status-metro status-disabled" title="Disabled">Disabled</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lorraine</td>
                                    <td>Mcgaughy</td>
                                    <td>Hemodialysis Technician</td>
                                    <td data-value="437400551390">11 Nov 1983</td>
                                    <td data-value="2">
                                        <span class="status-metro status-disabled" title="Disabled">Disabled</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lizzee</td>
                                    <td><a href="#">Goodlow</a>
                                    </td>
                                    <td>Technical Services Librarian</td>
                                    <td data-value="-257733999319">1 Nov 1961</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Judi</td>
                                    <td>Badgett</td>
                                    <td>Electrical Lineworker</td>
                                    <td data-value="362134712000">23 Jun 1981</td>
                                    <td data-value="1">
                                        <span class="status-metro status-active" title="Active">Active</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lauri</td>
                                    <td>Hyland</td>
                                    <td>Blackjack Supervisor</td>
                                    <td data-value="500874333932">15 Nov 1985</td>
                                    <td data-value="3">
                                        <span class="status-metro status-suspended" title="Suspended">Suspended</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div>

                    </div>


                </div>

            </div>
        </div>--%>

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

<!-- RIGHT SLIDER CONTENT -->
<%--<div class="sb-slidebar sb-right">
    <div class="right-wrapper">
        <div class="row">
            <h3>
                <span><i class="entypo-gauge"></i>&nbsp;&nbsp;MAIN WIDGET</span>
            </h3>
            <div class="col-sm-12">

                <div class="widget-knob">
                        <span class="chart" style="position:relative" data-percent="86">
                            <span class="percent"></span>
                        </span>
                </div>
                <div class="widget-def">
                    <b>Distance traveled</b>
                    <br>
                    <i>86% to the check point</i>
                </div>

                <div class="widget-knob">
                        <span class="speed-car" style="position:relative" data-percent="60">
                            <span class="percent2"></span>
                        </span>
                </div>
                <div class="widget-def">
                    <b>The average speed</b>
                    <br>
                    <i>30KM/h avarage speed</i>
                </div>


                <div class="widget-knob">
                        <span class="overall" style="position:relative" data-percent="25">
                            <span class="percent3"></span>
                        </span>
                </div>
                <div class="widget-def">
                    <b>Overall result</b>
                    <br>
                    <i>30KM/h avarage Result</i>
                </div>
            </div>
        </div>
    </div>

    <div style="margin-top:0;" class="right-wrapper">
        <div class="row">
            <h3>
                <span><i class="entypo-chat"></i>&nbsp;&nbsp;CHAT</span>
            </h3>
            <div class="col-sm-12">
                <span class="label label-warning label-chat">Online</span>
                <ul class="chat">
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/men/20.jpg">
                                </span><b>Dave Junior</b>
                            <br><i>Last seen : 08:00 PM</i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/men/21.jpg">
                                </span><b>Kenneth Lucas</b>
                            <br><i>Last seen : 07:21 PM</i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/men/22.jpg">
                                </span><b>Heidi Perez</b>
                            <br><i>Last seen : 05:43 PM</i>
                        </a>
                    </li>


                </ul>

                <span class="label label-chat">Offline</span>
                <ul class="chat">
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/men/23.jpg">
                                </span><b>Dave Junior</b>
                            <br><i>Last seen : 08:00 PM</i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/women/24.jpg">
                                </span><b>Kenneth Lucas</b>
                            <br><i>Last seen : 07:21 PM</i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/men/25.jpg">
                                </span><b>Heidi Perez</b>
                            <br><i>Last seen : 05:43 PM</i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/women/25.jpg">
                                </span><b>Kenneth Lucas</b>
                            <br><i>Last seen : 07:21 PM</i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle"
                                         src="http://api.randomuser.me/portraits/thumb/men/26.jpg">
                                </span><b>Heidi Perez</b>
                            <br><i>Last seen : 05:43 PM</i>
                        </a>
                    </li>


                </ul>
            </div>
        </div>
    </div>
</div>--%>

<!-- END OF RIGHT SLIDER CONTENT-->


<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>


<!-- /MAIN EFFECT -->
<!-- GAGE -->
<script type="text/javascript" src="assets/js/toggle_close.js"></script>
<script src="assets/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>


<script type="text/javascript">
    $(function () {
        $('.footable-res').footable();
    });
</script>
<script type="text/javascript">
    $(function () {
        $('#footable-res2').footable().bind('footable_filtering', function (e) {
            var selected = $('.filter-status').find(':selected').text();
            if (selected && selected.length > 0) {
                e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
                e.clear = !e.filter;
            }
        });

        $('.clear-filter').click(function (e) {
            e.preventDefault();
            $('.filter-status').val('');
            $('table.demo').trigger('footable_clear_filter');
        });

        $('.filter-status').change(function (e) {
            e.preventDefault();
            $('table.demo').trigger('footable_filter', {
                filter: $('#filter').val()
            });
        });

        $('.filter-api').click(function (e) {
            e.preventDefault();

            //get the footable filter object
            var footableFilter = $('table').data('footable-filter');

            alert('about to filter table by "tech"');
            //filter by 'tech'
            footableFilter.filter('tech');

            //clear the filter
            if (confirm('clear filter now?')) {
                footableFilter.clearFilter();
            }
        });
    });
</script>

</body>

</html>


