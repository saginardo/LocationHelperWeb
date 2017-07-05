<%--
  Created by IntelliJ IDEA.
  User: saginardo
  Date: 2017/7/4
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查询设备列表</title>
</head>
<body>
设备列表：
<table width="100%" border=1>
    <tr>
        <td>设备号</td>
        <td>设备MAC地址</td>
        <td>设备纬度</td>
        <td>设备经度</td>
        <td>设备管理员</td>
        <td>设备状态</td>

    </tr>
    <c:forEach items="${deviceList }" var="device">
        <tr>
            <td>${device.deviceId }</td>
            <td>${device.macAddress }</td>
            <td>${device.latitude }</td>
            <td>${device.longitude }</td>
            <td>${device.owner }</td>
            <td>${device.deviceStatus }</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>

