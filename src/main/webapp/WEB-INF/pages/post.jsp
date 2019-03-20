<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>主页-Curtains的博客</title>

    <!--Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!--Materialize-->
    <link href="${pageContext.request.contextPath}/static/lib/materialize/css/materialize.min.css" rel="stylesheet" media="screen,projection">

    <!--Index Css-->
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editor.md-master/css/editormd.preview.css"/>

    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>


    <%--markdown--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jQuery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/editor.md-master/editormd.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/editor.md-master/lib/marked.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/editor.md-master/lib/prettify.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/editor.md-master/lib/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/editor.md-master/lib/underscore.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/editor.md-master/lib/sequence-diagram.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/editor.md-master/lib/flowchart.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/editor.md-master/lib/jquery.flowchart.min.js"></script>


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
            <li><a href="#"><i class="material-icons">person</i></a></li>
        </ul>
    </div>
    <div class="nav-content container">

        <ul class="tabs tabs-transparent">
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list">首页</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list/category">标签</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/article/list/title">归档</a></li>
            <li class="tab"><a target="_blank" href="${pageContext.request.contextPath}/about">关于</a></li>
        </ul>
    </div>
</nav>


<div class="section teal lighten-5">
    <div class="container display-none" id="post-container">
        <br>
        <div class="row">
            <div class="col s12 m12 l10 offset-l1 xl10 offset-xl1">
                <h2>${detail.title}</h2>
                <div class="row">
                    &nbsp;&nbsp;&nbsp;<a href="#" class="grey-text lighten-3 tooltipped" data-position="bottom" data-delay="50" data-tooltip="${detail.time}">${detail.time}</a>
                </div>
                <div class="row">
                    &nbsp;
                    <a href="#"><div class="chip hoverable z-depth-1">&nbsp;&nbsp;${detail.keywords}&nbsp;&nbsp;</div></a>
                </div>
                <div class="row">
                    <%--markdown文字--%>
                    <div class="col s12 m12 l12 xl12">
                        <div id="markdownView" style="width: 95%;background-color: #F6F6F6;">
                            <textarea style="display:none;" name="content"> ${detail.content}</textarea>
                        </div>
                    </div>

                </div>
                <br>
            </div>
        </div>
        <br>
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

<script type="text/javascript">

    $(document).ready(function() {
        var markdownView;
        markdownView = editormd.markdownToHTML("markdownView", {
            htmlDecode      : "style,script,iframe",  // you can filter tags decode
            codeFold: true,
            emoji           : true,
            taskList        : true,
            tex             : true,  // 默认不解析
            flowChart       : true,  // 默认不解析
            sequenceDiagram : true,  // 默认不解析
            // previewTheme: "white" //预览主题
            // theme: "gray"//顶部的主题

        });

    })


</script>

<jsp:include page="bottom.jsp"/>