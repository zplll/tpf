<%--
  Created by IntelliJ IDEA.
  User: zipon
  Date: 2017/7/17
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="resources/js/app.js"></script>
    <title>test platform</title>

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <%@include file="userInfo.jsp"%>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column">
            <div class="panel-group" id="panel-377528">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-377528" href="#panel-element-2399">环境配置</a>
                    </div>
                    <div id="panel-element-2399" class="panel-collapse in">
                        <div class="panel-body">
                            <%--<span onclick="javascript:load(this);" href="hosts.jsp">主机配置</span>--%>
                            <a id="hostsBtn" href="hosts.jsp" target="iframeName">主机配置</a>
                        </div>
                        <div class="panel-body">
                            <a href="/users/123">数据库配置</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-377528" href="#panel-element-94624">接口管理</a>
                    </div>
                    <div id="panel-element-94624" class="panel-collapse collapse">
                        <div class="panel-body">
                            接口管理
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-377528" href="#panel-element-94625">用例管理</a>
                    </div>
                    <div id="panel-element-94625" class="panel-collapse collapse">
                        <div class="panel-body">
                            测试用例
                        </div>
                        <div class="panel-body">
                            自定义用例
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-377528" href="#panel-element-94626">执行结果</a>
                    </div>
                    <div id="panel-element-94626" class="panel-collapse collapse">
                        <div class="panel-body">
                            执行结果查看
                        </div>
                    </div>
                </div>
            </div> <address> <strong>QQ, Inc.</strong><br/>1418641603<br/><abbr title="Phone">Phone:</abbr> 086-剩下的你猜</address>
        </div>
        <div class="col-md-10 column" id="inner">
            <%--src="hosts.jsp"--%>
            <iframe id ="innerPage" name="iframeName"   scrolling="no" style="width: 100%;height: 100%;border-width: 0; margin-top: 40px;"></iframe>
        </div>
    </div>
</div>
<script>
//    $("#hostsBtn").click(function () {
//        $("#inner").load("hosts.jsp");
//    });
//    function load(url, data) {
//        //alert($(url).attr("href"));
//        $.ajaxSetup({cache: false});
//        $("#inner").load($(url).attr("href") + " #inner ", data, function (result) {
//            alert(result);
//            //将被加载页的JavaScript加载到本页执行
//            $result = $(result);
//            $result.find("script").appendTo('#inner');
//        });
//    }
</script>
</body>
</html>
