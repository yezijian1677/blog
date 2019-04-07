<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>标签</title>

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
            <li class="tab"><a href="${pageContext.request.contextPath}/article/list/category" class="active">标签</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list/title" >归档</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/about">关于</a></li>
        </ul>
    </div>
</nav>

<!--Parallax-->
<div class="parallax-container">
    <div class="parallax"><img src="${pageContext.request.contextPath}/static/img/b-line-icons.jpg"></div>
    <div class="center white-text">
        <br><br><br><br><br><br><br>
        <h2>Happiness is a way station between too much and too little</h2>
    </div>
</div>

<!--主容器-->
<div class="section teal lighten-5">
    <div class="row">
        <div class="container">
            <br>
            <!--标签放置行-->
            <div class="row">
                <br>
                <div class="col s12 m12 l12 xl12">
                    <a class="chip hoverable z-depth-1 cyan lighten-3" href="${pageContext.request.contextPath}/article/list/category">Summary</a>
                    <c:forEach items="${CategoryList}" var="category">
                        <a class="chip hoverable z-depth-1 cyan lighten-3" href="${pageContext.request.contextPath}/article/list/category?cate=${category.name}">${category.name}</a>
                    </c:forEach>
                </div>
                <br>
            </div>

            <div class="progress">
                <div class="indeterminate"></div>
            </div>

            <!--文章列表-->
            <div class="row">
                <c:forEach items="${ArticleList}" var="article">
                    <div class="col s12 m12 l6 xl6">
                        <div class="card medium z-depth-3 hoverable">
                            <div class="card-image">
                                <img src="${pageContext.request.contextPath}/static/img/test1.png">
                                <span class="card-title"><a href="${pageContext.request.contextPath}/article/to_detail?id=${article.id}">${article.title}</a></span>
                            </div>
                            <div class="card-content">
                                <p>${article.describle}</p>
                            </div>
                            <div class="card-action">
                                <a href="#" class="read-all-post-link">阅读全文</a>
                                <a href="#" class="share-link">分享</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <!--翻页-->
            <div class="row">
                <div class="col s12 m12 l12 xl12">
                    <div class="row center">
                        <ul class="pagination">

                            <li id="my1" class="waves-effect"><a href="${pageContext.request.contextPath}/article/list/category?cate=${cate}&page=${page.prePage}"><i class="material-icons">chevron_left</i></a></li>
                            <li id="my2" class="waves-effect"><a href="${pageContext.request.contextPath}/article/list/category?cate=${cate}&page=${page.nextPage}"><i class="material-icons">chevron_right</i></a></li>

                        </ul>
                    </div>
                </div>
            </div>
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

<script>
    if (${page.isFirstPage}) {
        var my1 = document.getElementById("my1");
        my1.className = "disabled";
        my1.style.cssText = "pointer-events:none;"
    }
    if (${page.isLastPage}) {
        var my2 = document.getElementById("my2");
        my2.className = "disabled";
        my2.style.cssText = "pointer-events:none;"
    }
    console.log();
</script>

<jsp:include page="bottom.jsp"/>