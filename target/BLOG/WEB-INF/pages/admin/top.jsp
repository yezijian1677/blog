<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">

    <title> Curtains_blog_admin </title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/assets/img/favicon.ico">
    <%--editorMD--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editor.md-master/examples/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editor.md-master/css/editormd.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/jQuery/jquery-3.2.1.min.js"/>
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>

</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand">
                <b>Curtains</b>OA
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="${pageContext.request.contextPath}/static/img/666a9f9321fb8846.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15"> ${sessionScope.user.userName} </span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> 个人信息
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="${pageContext.request.contextPath}/quit" class="">
                            <span class="fa fa-power-off pr5"></span> 退出 </a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="${pageContext.request.contextPath}/static/img/666a9f9321fb8846.jpg" class="img-responsive">
                        </a>
                        <div class="media-body">
                            <div class="media-author">${sessionScope.user.userName}---${sessionScope.user.userId}</div>
                            <div class="media-links">
                                <a href="${pageContext.request.contextPath}/quit">退出</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt20">文章管理</li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/article/list">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">文章列表</span>
                        <span class="sidebar-title-tray">
                <span class="label label-xs bg-primary">New</span>
              </span>
                    </a>
                </li>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/admin/article/to_add">
                        <span class="glyphicon glyphicon-home"></span>
                        <span class="sidebar-title">添加文章</span>
                    </a>
                </li>
                <li class="sidebar-label pt15">基础信息管理</li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">分类信息</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/category/list">
                                <span class="glyphicon glyphicon-calendar"></span> 分类列表 </a>
                        </li>
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/admin/category/to_add">
                                <span class="glyphicon glyphicon-check"></span> 添加分类 </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="#">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">