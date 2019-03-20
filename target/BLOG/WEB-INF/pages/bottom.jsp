<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--页脚-->

<!--Donate Modal-->
<div class="modal" id="donate-modal">
    <div class="modal-content">
        <h5 class="center">使用支付宝请我喝咖啡</h5>
        <img src="${pageContext.request.contextPath}/static/img/" width="284px" height="387px" class="center-block">
    </div>
</div>

<footer class="page-footer cyan">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l4 xl4">
                <h4>Contact Me With</h4>
                <p>QQ: 1677390657<br>邮箱: 1677390657@qq.com</p>
                <br>
            </div>
            <div class="col s12 m12 l4 xl4">
                <h5>More</h5>
                <ul>
                    <li><a href="#" class="white-text">GitHub&nbsp;-&nbsp;yezijian1677</a></li>
                    <li><a href="#" class="white-text">微博&nbsp;-&nbsp;致美丽的你ye</a></li>
                    <li><a href="#" class="white-text">即刻&nbsp;-&nbsp;Curtains</a></li>
                </ul>
            </div>
            <div class="col s12 m12 l4 xl4">
                <h5>Donate</h5>
                <button type="button" class="btn cyan lighten-2 waves-effect donate-modal-trigger">请我喝一杯咖啡</button>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">@ 2019 Copyright curtains.tech<br>
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
