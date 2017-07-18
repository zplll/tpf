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
                            <a href="/users">主机配置</a>
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
            <div id="caseList">
            <button type="button" class="btn btn-default btn-primary">新增用例</button>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>
                        测试编号
                    </th>
                    <th>
                        用例名称
                    </th>
                    <th>
                        执行时间
                    </th>
                    <th>
                        执行结果
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        1
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        01/04/2012
                    </td>
                    <td>
                        Default
                    </td>
                </tr>
                <tr class="success">
                    <td>
                        1
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        01/04/2012
                    </td>
                    <td>
                        Approved
                    </td>
                </tr>
                <tr class="error">
                    <td>
                        2
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        02/04/2012
                    </td>
                    <td>
                        Declined
                    </td>
                </tr>
                <tr class="warning">
                    <td>
                        3
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        03/04/2012
                    </td>
                    <td>
                        Pending
                    </td>
                </tr>
                <tr class="info">
                    <td>
                        4
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        04/04/2012
                    </td>
                    <td>
                        Call in to confirm
                    </td>
                </tr>
                </tbody>
            </table>
            <ul class="pagination" style="margin-right: 20px">
                <li>
                    <a href="#">上一页</a>
                </li>
                <li>
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">下一页</a>
                </li>
            </ul>
        </div>
        </div>
    </div>
</div>
</body>
</html>
