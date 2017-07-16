<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/6
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
      <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
      <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
      <script src="resources/js/app.js"></script>
  </head>
  <body class="container" style="width: 80%">
  <%@include file="userInfo.jsp"%>
  <div class="row">
      <div class="col-md-1" style="background-color: aqua;height: 500px;">
          <div style="margin: 10px 15px">
              <a>我的工作台</a><br/>
              <a>项目管理</a>
          </div>
      </div>
      <div class="col-md-11">
          <table class="table table-striped" ng-app = "myapp" ng-controller = "taskctrl">
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
  </body>
</html>
