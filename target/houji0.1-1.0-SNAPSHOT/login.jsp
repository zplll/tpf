<%--
  Created by IntelliJ IDEA.
  User: zipon
  Date: 2017/3/9
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
    <script src="resources/js/app.js"></script>
</head>
<body ng-app = "myapp" style='background: url("resources/image/login.jpg") no-repeat center center fixed;background-size: cover'>
<div class="container">
    <div class="row clearfix" style="margin-top: 50px;">
        <div class="col-md-4 column">
        </div>
        <div class="col-md-4 column" ng-controller = "login">
            <div class="row clearfix">
                <div class="col-md-12 column"  style="text-align: center">
                    <img src="resources/image/houji.png">
                </div>
            </div>
            <form role="form" >
                <div class="form-group">
                    <label for="username">Username</label><input id="username" type="text" name="username" ng-model = "formData.username" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Password</label><input id="password" type="password" name="password" ng-model = "formData.password" class="form-control" />
                </div>
                <button class="btn btn-default" ng-click = "processForm()" >登陆</button>
                <div ng-bind = "message">1</div>
            </form>
        </div>
        <div class="col-md-4 column">
        </div>
    </div>
</div>
<!--<div  ng-controller = "login">
    <label>账号：</label><input type="text" name="username" ng-model = "formData.username"/>
    <label>密码：</label><input type="password" name="password" ng-model = "formData.password" />
    <button ng-click = "processForm()" >登陆</button>
    <div ng-bind = "message">1</div>
</div>-->
</body>
</html>
