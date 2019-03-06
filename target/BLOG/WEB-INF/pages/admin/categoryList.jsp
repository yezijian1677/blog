<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 分类列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-trash"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-plus" onclick="javascript:window.location.href='/employee/to_add';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr>
                            <th class="text-center hidden-xs">Select</th>
                            <th class="hidden-xs">序号</th>
                            <th class="hidden-xs">分类名</th>
                            <th class="hidden-xs">关键词</th>
                            <th class="hidden-xs">类别</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="category">
                            <tr class="message-unread">
                                <td class="hidden-xs">
                                    <label class="option block mn">
                                        <input type="checkbox" name="mobileos" value="FR">
                                        <span class="checkbox mn"></span>
                                    </label>
                                </td>
                                <td>${category.id}</td>
                                <td>${category.name}</td>
                                <td class="text-center fw600">${category.keywords}</td>
                                <td class="hidden-xs">
                                    <c:if test="${category.type==true}">
                                     <span class="badge badge-warning mr10 fs11">留言</span>
                                    </c:if>
                                    <c:if test="${category.type==false}">
                                        <span class="badge badge-warning mr10 fs11">文章</span>
                                    </c:if>
                                </td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/category/to_edit?id=${category.id}">编辑</a>
                                    <a href="${pageContext.request.contextPath}/admin/category/delete?id=${category.id}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>c
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>