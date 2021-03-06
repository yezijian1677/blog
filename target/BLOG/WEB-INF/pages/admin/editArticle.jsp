<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/ueditor1_4_3_3/lang/zh-cn/zh-cn.js"></script>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 修改博客 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;height: 1300px;">
            <div class="panel heading-border">
                <form action="${pageContext.request.contextPath}/admin/article/edit" method="post" name="add" style="height: 1300px;">
                    <input type="hidden" value="${article.id}" id="id" name="id">
                    <div class="panel-body bg-light" style="height: 1300px;">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <input id="title" name="title" class="gui-input" value="${article.title}">
                            </div>
                            <div class="col-md-6">
                                <input type="hidden" id="categoryId" name="categoryId" value="${category.id}">
                                <input id="category" name="category" class="gui-input" value="${category.name}">
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <input id="keywords" name="keywords" class="gui-input" value="${article.keywords}" }>
                            </div>
                            <div class="col-md-6">
                                <input  type="file" id="pic" name="pic" class="gui-file" value="${article.pic}">
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                               <textarea class="gui-textarea" id="describle" name="describle" >${article.describle}</textarea>
                            </div>
                        </div>


                        <div class="panel-footer text-right">
                            <!-- editormd start -->
                            <div class="editormd" id="test-editormd">
                                <textarea class="editormd-markdown-textarea" name="content" id="editormd">${article.content}</textarea>
                                <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
                                <!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
                                <textarea class="editormd-html-textarea" name="editorhtml" id="editorhtml">${article.content}</textarea>
                            </div>
                            <!-- editormd end -->
                        </div>

                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 修改 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>