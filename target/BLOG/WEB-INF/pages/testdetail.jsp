<%--
  Created by IntelliJ IDEA.
  User: 16773
  Date: 2019/3/20
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editor.md-master/examples/css/style.css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editor.md-master/css/editormd.css"/>

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

        <div id="markdownView" style="width: 95%" class="editormd-preview-theme-dark">
            <textarea style="display:none;" name="content"> ${detail.content}</textarea>
        </div>

</div>
        <script type="text/javascript">

            $(document).ready(function() {
                var markdownView;
                markdownView = editormd.markdownToHTML("markdownView", {
                    //htmlDecode      : "style,script,iframe",  // you can filter tags decode
                    emoji           : true,
                    taskList        : true,
                    tex             : true,  // 默认不解析
                    flowChart       : true,  // 默认不解析
                    sequenceDiagram : true,  // 默认不解析
                    previewTheme: "dark"//预览主题
                });

            })


        </script>
</body>

</html>
