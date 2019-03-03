<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
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
                <c:forEach items="${list}" var="article">
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


<jsp:include page="bottom.jsp"/>