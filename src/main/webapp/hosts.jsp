<%--
  Created by IntelliJ IDEA.
  User: zipon
  Date: 2017/7/19
  Time: 17:46
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
    <title>hosts page</title>

</head>
<body>
<div class="container" ng-app="myapp" ng-controller="hostsctrl" style="width: 100%">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <%--ng-click初始化ip name port description的值--%>
            <button name="insert_task" class="btn btn-primary"  href="#addHost" data-toggle="modal" ng-click="addHostInfo.hostIp=null;addHostInfo.hostName=null;addHostInfo.hostPort=null;addHostInfo.description=null;"  style="margin-top: 10px">新增环境配置</button>
            <br/>
            <br/>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th ng-repeat="column in columns">
                        {{columnsToString[column]}}
                    </th>
                    <th>
                        执行操作
                    </th>
                </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="host in hosts">
                        <td ng-repeat="column in columns">
                            {{host[column]}}
                        </td>
                        <td >
                            <button class="btn btn-primary" value="{{host.id}}" >修改</button> &nbsp;&nbsp;&nbsp;
                            <button class="btn btn-primary"value="{{host.id}}" ng-click="deleteBtnFunc($event)" href="#delHost" data-toggle="modal" >删除</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>



    <%--新增主机div--%>
    <div class="modal fade" id="addHost" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel01">
                    新增环境配置
                </h4>
            </div>
            <div class="modal-body form-horizontal" >
                <div ng-repeat="column in columns" class="form-group" ng-if="column != 'createTime' && column != 'updateTime' && column != 'id'">
                    <label class="col-sm-2 control-label">{{columnsToString[column]}}:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" ng-model="addHostInfo[column]">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary" ng-click="addHostFunc()" data-dismiss="modal">保存</button>
            </div>
        </div>

    </div>
    </div>

    <%--删除主机信息确认div--%>
    <div class="modal fade" id="delHost" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel02">
                        确认
                    </h4>
                </div>
                <div class="modal-body form-horizontal" >
                    <h3>确认删除？</h3>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">不，我点错了</button> <button type="button" class="btn btn-primary" ng-click="deleteHostFunc()" data-dismiss="modal">确认删除</button>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
