<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>关于</title>

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
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list/title">归档</a></li>
            <li class="tab"><a  href="${pageContext.request.contextPath}/about" class="active">关于</a></li>
        </ul>
    </div>
</nav>
<!--parallax-->
<div class="parallax-container">
    <div class="parallax"><img src="${pageContext.request.contextPath}/static/img/6.jpg"></div>
    <div class="center white-text">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <h3>Curtains</h3>
        <h4>I'll think of you every step of the way</h4>
    </div>
</div>

<!--简介-->
<div class="section teal lighten-5">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12 xl12">
                <br><br><br><br><br><br><br><br><br><br>
                <h2>简介</h2>
                <p class="flow-text">男，20岁，天津理工大学计算机学院在校本科生，目前大三，热爱生活，热爱编程。
                    喜欢学习新技术，自己捣鼓项目。喜欢前端，但是美感太差，所以现在在捣鼓后台开发，每天头铁锤bug。</p>
                <br><br><br><br><br><br><br><br><br><br>
            </div>
        </div>
    </div>
</div>

<!--履历-->
<div class="section indigo lighten-5">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12 xl12">
                <br><br><br><br><br><br><br><br><br><br><br>
                <h2>经历</h2>
                <table class="flow-text">
                    <thead>
                    <tr>
                        <th>开始年份</th>
                        <th>持续时间</th>
                        <th>地点</th>
                        <th>履历</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>2016</th>
                        <th>4</th>
                        <th>天津理工大学大学</th>
                        <th>大学本科</th>
                    </tr>
                    </tbody>
                </table>
                <br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </div>
    </div>
</div>

<!--技能点-->
<div class="section blue lighten-5">
    <div class="container">
        <div class="row">
            <br><br><br><br><br><br><br>
            <div class="col s12 m12 l12 xl12">
                <h2>技能点</h2>
                <br>
                <h4>语言</h4>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Java&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;C&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;JavaScript&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;SQL&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;ES6&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Html&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Css&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Markdown&nbsp;&nbsp;</div>

                <h4>框架/库</h4>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;jQuery&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Spring&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;SpringMvc&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Mybatis&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;小程序&nbsp;&nbsp;</div>
                <h4>工具</h4>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;IDEA&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;WebStorm&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Visual Studio&nbsp;&nbsp;</div>
                <div class="chip z-depth-1 hoverable">&nbsp;&nbsp;Visual Studio Code&nbsp;&nbsp;</div>
            </div>
            &nbsp;
            <br><br><br><br><br><br><br>
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