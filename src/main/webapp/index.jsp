<%--
  Created by IntelliJ IDEA.
  User: ziponlll
  Date: 2017/6/12
  Time: 下午11:48
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
    <title>首页</title>
</head>
<body>
<div class="container" style="width: 100%;" ng-app = "myapp" ng-controller = "taskctrl"><!--style="background-color: rgb(174,221,129)"-->
    <%@include file="userInfo.jsp"%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">首页</a>
                </li>
                <li>
                    <a href="#">我的工作台</a>
                </li>
                <li>
                    <a href="#">个人信息</a>
                </li>

                <!--
                <li class="dropdown pull-right">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">操作</a>
                        </li>
                        <li>
                            <a href="#">设置栏目</a>
                        </li>
                        <li>
                            <a href="#">更多设置</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                            <a href="#">分割线</a>
                        </li>
                    </ul>
                </li>
                -->
            </ul>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <button name="insert_task" class="btn btn-primary"  href="#modal-container-504490" data-toggle="modal" ng-click="taskDetail=null">新增任务</button>
                    <table class="table" > <!--ng-app = "myapp" ng-controller = "taskctrl"-->
                        <thead>
                            <tr>
                                <!--<td>ID</td>-->
                                <td  ng-repeat = "column in columns">{{columnsToString[column]}}</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat = "task in tasks">
                                <!--<td>{{$index+1}}</td>-->
                                <td ng-repeat="column in $parent.columns">{{task[column]}}</td>
                                <td style="margin: auto auto">
                                    <button name="edit_task" class="btn btn-primary" value="{{task}}" href="#modal-container-504489" data-toggle="modal" ng-click="editTask($event)">编辑</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--<a id="modal-504489" href="#modal-container-504489" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>-->

            <div class="modal fade" id="modal-container-504489" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                编辑任务
                            </h4>
                        </div>
                        <div class="modal-body" >
                            <div ng-repeat="column in columns">
                                <label>{{columnsToString[column]}}:</label>
                                <input type="text" ng-model="taskDetail[column]">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary" ng-click="updateTask()" data-dismiss="modal">保存</button>
                        </div>
                    </div>

                </div>

            </div>

            <!-- 新增任务  -->
            <div class="modal fade" id="modal-container-504490" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel01">
                                新增任务
                            </h4>
                        </div>
                        <div class="modal-body" >
                            <div ng-repeat="column in columns">
                                <label>{{columnsToString[column]}}:</label>
                                <input type="text" ng-model="taskDetail[column]">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary" ng-click="insertTask()" data-dismiss="modal">保存</button>
                        </div>
                    </div>

                </div>

            </div>
            <nav class="navbar navbar-default navbar-fixed-bottom">
                <div class="navbar-inner navbar-content-center">
                    <p class="text-muted credit" style="padding: 10px;">
                        页脚哈!
                    </p>
                </div>
            </nav>

        </div>

    </div>

</div>
<!--
<script>
    function editTask(i) {
        console.log(i);
        var taskDetail = i;
        console.log(i);

        $("#editTaskModal").html(i);

    }
</script>-->
</body>
</html>
