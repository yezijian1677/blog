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
            <li><a href="${pageContext.request.contextPath}/to_login"><i class="material-icons hide-on-med-and-down">person</i></a></li>
        </ul>
        <ul class="left hide-on-large-only">
            <li><a href="${pageContext.request.contextPath}/to_login"><i class="material-icons">person</i></a></li>
        </ul>
    </div>
    <div class="nav-content container">
        <ul class="tabs tabs-transparent">
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list">首页</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list/category">标签</a></li>
            <li class="tab"><a href="${pageContext.request.contextPath}/article/list/title" class="active">归档</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/about">关于</a></li>
        </ul>
    </div>
</nav>

<!--parallax-->
<div class="parallax-container">
    <div class="parallax"><img src="${pageContext.request.contextPath}/static/img/2.jpg"></div>
    <div class="center white-text">
        <br><br><br><br><br><br><br>
        <h2>Accept what was and what is</h2>
    </div>
</div>

<!--主容器-->
<div class="section teal lighten-5">
    <div class="row">
        <div class="container">
            <div class="row">
                <br>
                <div class="col s12 m12 l12 xl12">
                    <a class="chip hoverable z-depth-1 cyan lighten-3" href="${pageContext.request.contextPath}/article/list/title?year=2019">2019</a>
                    <a class="chip hoverable z-depth-1 cyan lighten-3" href="${pageContext.request.contextPath}/article/list/title?year=2018">2018</a>

                </div>
                <br>
            </div>

            <br>
            <!--按照时间顺序存放的文章Collection-->
            <div class="col s12 m12 l12 xl12">
                <div class="row">
                    <h2>${nowYear}</h2>
                    <ul class="collection z-depth-1">
                        <c:forEach items="${sub}" var="article">
                            <a href="${pageContext.request.contextPath}/article/to_detail?id=${article.id}" class="collection-item black-text">${article.time.month}-${article.time.date}  ${article.title}</a>
                        </c:forEach>
                    </ul>
                </div>
                <div class="divider"></div>
            </div>
            <br>
        </div>
    </div>
</div>

<!--Action Button-->
<div class="fixed-action-btn">
    <a class="btn-floating btn-large red">
        <i class="material-icons">add</i>
    </a>
    <ul>
        <li><a class="btn-floating green"><i class="material-icons">share</i></a></li>
        <li><a class="btn-floating yellow darken-1"><i class="material-icons">mail</i></a></li>
        <li><a class="btn-floating blue"><i class="material-icons">bug_report</i></a></li>
    </ul>
</div>

<jsp:include page="bottom.jsp"/>