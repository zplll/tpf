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
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">首页</a>
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
                <div class="col-md-3 column">
                    <ul class="list-unstyled">
                        <li>
                            我的工作台
                        </li>
                        <li>
                             项目管理
                        </li>

                    </ul>
                </div>
                <div class="col-md-9 column">
                    <button type="button" class="btn btn-default btn-primary">按钮</button>
                    <table class="table" ng-app = "myapp" ng-controller = "taskctrl">
                        <thead>
                            <tr>
                                <td>ID</td>
                                <td  ng-repeat = "column in columns">{{columnsToString[column]}}</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat = "task in tasks">
                                <td>{{$index+1}}</td>
                                <td ng-repeat="column in $parent.columns">{{task[column]}}</td>
                                <td style="margin: auto auto">
                                    <button name="edit_task" class="btn btn-primary" value="{{task}}" ng-click="editTask()">编辑</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <a id="modal-504489" href="#modal-container-504489" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>

            <div class="modal fade" id="modal-container-504489" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                标题
                            </h4>
                        </div>
                        <div class="modal-body">
                            <label>task:<input type="text" /></label>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary">保存</button>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>
</div>
</body>
</html>
