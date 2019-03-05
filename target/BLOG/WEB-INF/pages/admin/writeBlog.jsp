<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/ueditor1_4_3_3/lang/zh-cn/zh-cn.js"></script>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加员工 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;height: 1125px;">
            <div class="panel heading-border">
                <form action="${pageContext.request.contextPath}/admin/article/add" method="post" name="add" style="height: 1125px;">
                    <div class="panel-body bg-light" style="height: 1125px;">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <input id="title" name="title" class="gui-input" placeholder="标题">
                            </div>
                            <div class="col-md-6">
                                <select id="categoryId" class="field select"
                                        name="categoryId">
                                    <option value="">请选择博客类别...</option>
                                    <c:forEach items="${labelList}" var="label">
                                        <option value="${label.id}">${label.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                                <input id="keywords" name="keywords" class="gui-input" placeholder="关键字">
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                               <textarea class="gui-textarea" id="describle" name="describle" placeholder="简介"></textarea>
                            </div>
                        </div>


                        <div class="panel-footer text-right">
                            <textarea name="content" id="myEditor" style="height: 515px;">博客内容</textarea>
                            <script type="text/javascript">
                                UE.getEditor('myEditor');
                            </script>
                        </div>

                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 提交 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>