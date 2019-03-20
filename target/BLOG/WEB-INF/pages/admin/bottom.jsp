<%@ page contentType="text/html;charset=UTF-8" language="java" %>

</section>
</div>

<script src="${pageContext.request.contextPath}/static/editor.md-master/examples/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editor.md-master/editormd.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editor.md-master/languages/en.js"></script>
<script type="text/javascript">
    var testEditor;
    testEditor=$(function() {
        editormd("test-editormd", {
            width: "100%",
            height: 740,
            path : "${pageContext.request.contextPath}/static/editor.md-master/lib/",
            // previewTheme : "dark",				//预览的主题
            //theme : "dark",					//工具栏的主题
            //editorTheme : "pastel-on-dark",	//编辑栏的主题
            //markdown : md,						//这不知道是什么东西，开启的时候报错
            //watch : true,               		// 关闭实时预览
            syncScrolling : true,				//这个看着意思是同步滑动。。。。false的时候，右边不显示了。。。。
            codeFold : true,						//代码折叠 ?   选中 然后按快捷键 Ctrl + Q,好像设置成false也可以用.....不知道，知道求告知
            saveHTMLToTextarea : true,   		// 保存 HTML 到 Textarea
            searchReplace : true,
            htmlDecode : true,   // 开启 HTML 标签解析，为了安全性，默认不开启
            //toolbar  : false,             			 //关闭工具栏
            //previewCodeHighlight : false, 			 // 关闭预览 HTML 的代码块高亮，默认开启
            emoji : true,				 // 表情
            taskList : true,			 // 这个具体不知道,知道求告知
            tocm            : true,       // Using [TOCM]
            tex : true,                   // 开启科学公式TeX语言支持，默认关闭
            flowChart : true,             // 开启流程图支持，默认关闭
            sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,
            //dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true
            //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true
            //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true
            //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1
            //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff
            imageUpload : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "${pageContext.request.contextPath}/fileUpload/editorMDUpload",        	//上传地址
            onload : function() {							//加载完后执行
                console.log('onload', this);
                //this.fullscreen();
                //this.unwatch();
                //this.watch().fullscreen();

                //this.width("100%");
                //this.height(480);
                //this.resize("100%", 640);
            }
        });


    });
</script>

<style>
    /* demo page styles */
    body { min-height: 2300px; }

    .content-header b,
    .admin-form .panel.heading-border:before,
    .admin-form .panel .heading-border:before {
        transition: all 0.7s ease;
    }
    /* responsive demo styles */
    @media (max-width: 800px) {
        .admin-form .panel-body { padding: 18px 12px; }
    }
</style>

<style>
    .ui-datepicker select.ui-datepicker-month,
    .ui-datepicker select.ui-datepicker-year {
        width: 48%;
        margin-top: 0;
        margin-bottom: 0;

        line-height: 25px;
        text-indent: 3px;

        color: #888;
        border-color: #DDD;
        background-color: #FDFDFD;

        -webkit-appearance: none; /*Optionally disable dropdown arrow*/
    }
</style>
<script src="${pageContext.request.contextPath}/static/vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/admin-tools/admin-forms/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/admin-tools/admin-forms/js/additional-methods.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/admin-tools/admin-forms/js/jquery-ui-datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/utility/utility.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/demo/demo.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/pages.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/items.js"></script>
</body>
</html>


