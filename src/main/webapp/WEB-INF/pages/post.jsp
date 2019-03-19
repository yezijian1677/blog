<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>

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
                    <div class="col s12 m12 l12 xl12">
                        <p>
                            ${detail.content}
                        </p>
                        <p>
                            有一天，我路上看到了个心动的女生，很心动那种，我犹豫了很久要不要去搭讪。最后心动战胜了搭讪焦虑，我鼓足了勇气，硬着头皮走过去搭讪，跟她说我想认识她，想加她微信，我被拒绝了。只记得我当时觉得很尴尬，脸火辣辣的，感觉身边所有的人都在嘲笑我，恨不得地上能有个裂缝能让我钻进去。
                        </p>
                        <p>
                            有一天，我路上看到了个心动的女生，很心动那种，我犹豫了很久要不要去搭讪。最后心动战胜了搭讪焦虑，我鼓足了勇气，硬着头皮走过去搭讪，跟她说我想认识她，想加她微信，我被拒绝了。只记得我当时觉得很尴尬，脸火辣辣的，感觉身边所有的人都在嘲笑我，恨不得地上能有个裂缝能让我钻进去。
                        </p>
                        <p>
                            有一天，我路上看到了个心动的女生，很心动那种，我犹豫了很久要不要去搭讪。最后心动战胜了搭讪焦虑，我鼓足了勇气，硬着头皮走过去搭讪，跟她说我想认识她，想加她微信，我被拒绝了。只记得我当时觉得很尴尬，脸火辣辣的，感觉身边所有的人都在嘲笑我，恨不得地上能有个裂缝能让我钻进去。
                        </p>
                        <p>
                            有一天，我路上看到了个心动的女生，很心动那种，我犹豫了很久要不要去搭讪。最后心动战胜了搭讪焦虑，我鼓足了勇气，硬着头皮走过去搭讪，跟她说我想认识她，想加她微信，我被拒绝了。只记得我当时觉得很尴尬，脸火辣辣的，感觉身边所有的人都在嘲笑我，恨不得地上能有个裂缝能让我钻进去。
                        </p>
                        <p>
                            有一天，我路上看到了个心动的女生，很心动那种，我犹豫了很久要不要去搭讪。最后心动战胜了搭讪焦虑，我鼓足了勇气，硬着头皮走过去搭讪，跟她说我想认识她，想加她微信，我被拒绝了。只记得我当时觉得很尴尬，脸火辣辣的，感觉身边所有的人都在嘲笑我，恨不得地上能有个裂缝能让我钻进去。
                        </p>
                        <p>
                            有一天，我路上看到了个心动的女生，很心动那种，我犹豫了很久要不要去搭讪。最后心动战胜了搭讪焦虑，我鼓足了勇气，硬着头皮走过去搭讪，跟她说我想认识她，想加她微信，我被拒绝了。只记得我当时觉得很尴尬，脸火辣辣的，感觉身边所有的人都在嘲笑我，恨不得地上能有个裂缝能让我钻进去。
                        </p>
                        <p>
                            有一天，我路上看到了个心动的女生，很心动那种，我犹豫了很久要不要去搭讪。最后心动战胜了搭讪焦虑，我鼓足了勇气，硬着头皮走过去搭讪，跟她说我想认识她，想加她微信，我被拒绝了。只记得我当时觉得很尴尬，脸火辣辣的，感觉身边所有的人都在嘲笑我，恨不得地上能有个裂缝能让我钻进去。
                        </p>
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

<jsp:include page="bottom.jsp"/>