<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>主页-Kindem的博客</title>

    <!--Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!--Materialize-->
    <link href="${pageContext.request.contextPath}/static/lib/materialize/css/materialize.min.css" rel="stylesheet" media="screen,projection">

    <!--Index Css-->
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet">
</head>
<body>
<!--导航栏-->
<nav class="nav-extended cyan">
    <div class="nav-wrapper container">
        <a href="#" class="brand-logo">Kindem</a>
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
            <li class="tab"><a href="#" class="active">首页</a></li>
            <li class="tab"><a target="_blank" href="tag.html">标签</a></li>
            <li class="tab"><a target="_blank" href="#">归档</a></li>
            <li class="tab"><a target="_blank" href="about.html">关于</a></li>
        </ul>
    </div>
</nav>

<!--parallax-->
<div class="parallax-container">
    <div class="parallax"><img src="${pageContext.request.contextPath}/static/img/index_bg.jpg"></div>
    <div class="center white-text">
        <br><br><br><br><br><br><br>
        <h2>一生想做烂漫 Coder</h2>
    </div>
</div>

<!--主容器-->
<div class="section teal lighten-5">
    <div class="row">
        <div class="container">
            <br>
            <div class="row">
                <div class="col s12 m12 l6 xl6">
                    <div class="card medium z-depth-3 hoverable">
                        <div class="card-image">
                            <img src="${pageContext.request.contextPath}/static/img/test1.png">
                            <span class="card-title">Facker被Bang演了!!</span>
                        </div>
                        <div class="card-content">
                            <p>比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?
                                比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?</p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="read-all-post-link">阅读全文</a>
                            <a href="#" class="share-link">分享</a>
                        </div>
                    </div>
                </div>
                <div class="col s12 m12 l6 xl6">
                    <div class="card medium z-depth-3 hoverable">
                        <div class="card-image">
                            <img src="${pageContext.request.contextPath}/static/img/test1.png">
                            <span class="card-title">Facker被Bang演了!!</span>
                        </div>
                        <div class="card-content">
                            <p>比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?
                                比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?</p>
                        </div>
                        <div class="card-action">
                            <a href="#">阅读全文</a>
                            <a href="#">分享</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m12 l6 xl6">
                    <div class="card medium z-depth-3 hoverable">
                        <div class="card-image">
                            <img src="${pageContext.request.contextPath}/static/img/test1.png">
                            <span class="card-title">Facker被Bang演了!!</span>
                        </div>
                        <div class="card-content">
                            <p>比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?
                                比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?</p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="read-all-post-link">阅读全文</a>
                            <a href="#" class="share-link">分享</a>
                        </div>
                    </div>
                </div>
                <div class="col s12 m12 l6 xl6">
                    <div class="card medium z-depth-3 hoverable">
                        <div class="card-image">
                            <img src="${pageContext.request.contextPath}/static/img/test1.png">
                            <span class="card-title">Facker被Bang演了!!</span>
                        </div>
                        <div class="card-content">
                            <p>比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?
                                比赛结束后，Facker趴在桌子上久久不能释怀，我曹，怎么会被一起战斗了那么久的队友演呢?</p>
                        </div>
                        <div class="card-action">
                            <a href="#">阅读全文</a>
                            <a href="#">分享</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s12 m12 l12 xl12">
            <div class="row center">
                <ul class="pagination">
                    <li class="disabled"><a href="#"><i class="material-icons">chevron_left</i></a></li>
                    <li class="waves-effect"><a href="#"><i class="material-icons">chevron_right</i></a></li>
                </ul>
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

<!--Donate Modal-->
<div class="modal" id="donate-modal">
    <div class="modal-content">
        <h5 class="center">使用支付宝请我喝咖啡</h5>
        <img src="${pageContext.request.contextPath}/static/img/donate.jpg" width="284px" height="387px" class="center-block">
    </div>
</div>

<!--页脚-->
<footer class="page-footer cyan">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l4 xl4">
                <h4>Contact Me With</h4>
                <p>QQ: 461425614<br>邮箱: 461425614@qq.com</p>
                <br>
            </div>
            <div class="col s12 m12 l4 xl4">
                <h5>More</h5>
                <ul>
                    <li><a href="#" class="white-text">GitHub&nbsp;-&nbsp;FlyAndNotDown</a></li>
                    <li><a href="https://www.zhihu.com/people/wang-yu-zhi-ku-66/activities" class="white-text">知乎&nbsp;-&nbsp;亡与栀枯</a></li>
                    <li><a href="https://user.qzone.qq.com/461425614/infocenter" class="white-text">QZone&nbsp;-&nbsp;可见影子</a></li>
                </ul>
            </div>
            <div class="col s12 m12 l4 xl4">
                <h5>Donate</h5>
                <button type="button" class="btn cyan lighten-2 waves-effect donate-modal-trigger">请我喝一杯咖啡</button>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">@ 2017 Copyright kindemh.cn<br>
            Frontend Framework By <a href="http://materializecss.com/about.html" class="white-text">Materialize</a></div>
    </div>
</footer>

<!--jQuery-->
<script src="${pageContext.request.contextPath}/static/lib/jQuery/jquery-3.2.1.min.js"></script>

<!--Materialize-->
<script src="${pageContext.request.contextPath}/static/lib/materialize/js/materialize.min.js"></script>

<!--Index Js-->
<script src="${pageContext.request.contextPath}/static/js/index.js"></script>
</body>
</html>