<%--
  Created by IntelliJ IDEA.
  User: zipon
  Date: 2017/3/13
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div>
    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>

    <%! String username = null;%>

    <%
        username = (String) session.getAttribute("username");;
        if (username==null){
            response.sendRedirect(request.getContextPath()+"/login.jsp");//"../resources/jsp/login.jsp");
        }else {
            out.println(username+",欢迎你！");
        }
    %>
    <span><a href="/logout">【退出】</a></span>
</div>

