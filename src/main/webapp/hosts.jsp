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
<div class="container" ng-app="myapp" ng-controller="hostsctrl">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button name="insert_task" class="btn btn-primary"  href="#modal-container-504490" data-toggle="modal" ng-click="taskDetail=null">新增环境配置</button>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th ng-repeat="column in columns">
                        {{columnsToString[column]}}
                    </th>
                </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="host in hosts">
                        <td ng-repeat="column in columns">
                            {{host[column]}}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
