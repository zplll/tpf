<%--
  Created by IntelliJ IDEA.
  User: zipon
  Date: 2017/7/19
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>testcases</title>
</head>
<body>
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
</body>
</html>
