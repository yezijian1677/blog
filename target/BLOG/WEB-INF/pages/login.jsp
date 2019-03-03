<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>关于-Curtains的博客</title>

    <!--Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!--Materialize-->
    <link href="${pageContext.request.contextPath}/static/lib/materialize/css/materialize.min.css" rel="stylesheet" media="screen,projection">

    <!--About Css-->
    <link href="${pageContext.request.contextPath}/static/css/login.css" rel="stylesheet">
</head>
<body>
<!--导航栏-->
<nav class="nav-extended cyan">
    <div class="nav-wrapper container">
        <a href="#" class="brand-logo">Curtains</a>
        <ul class="right">
            <li><a href="#"><i class="material-icons">search</i></a></li>
            <li><a href="#"><i class="material-icons hide-on-med-and-down">person</i></a></li>
        </ul>
        <ul class="left hide-on-large-only">
            <li><a href="#"><i class="material-icons">person</i></a></li>
        </ul>
    </div>
    <div class="nav-content container">
        <ul class="tabs tabs-transparent">
            <li class="tab"><a href="${pageContext.request.contextPath}/article/list" class="active">首页</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list/category">标签</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list/title">归档</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/about">关于</a></li>
        </ul>
    </div>
</nav>

<!--parallax-->
<div class="parallax-container">
    <div class="parallax"><img src="${pageContext.request.contextPath}/static/img/about_bg.png"></div>
    <div class="center white-text">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <h3>Kindem</h3>
        <h4>一生想做浪漫Coder</h4>
    </div>
</div>

<form class="login-form" method="post" action="${pageContext.request.contextPath}/login">
    <div class="username">
        <input type="text" name="userId" id="userId" placeholder="USERNAME"/>
    </div>
    <div class="password">
        <input type="text" name="password" id="password" placeholder="PASSWORD"/>
    </div>
    <input type="submit" class="login" value="log in"/>
</form>


<jsp:include page="bottom.jsp"/>