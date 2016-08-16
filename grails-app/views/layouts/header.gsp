<%--
  Created by IntelliJ IDEA.
  User: anubhav
  Date: 8/8/16
  Time: 12:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>News</title>
    <link rel="stylesheet" href="${resource(dir:"css",file: "bootstrap.css")}"/>
    <link rel="stylesheet" href="${resource(dir:"css",file: "bootstrap-theme.css")}"/>

    <g:javascript src="jquery-1.11.1.min.js"/>
    <g:javascript src="bootstrap.min.js"/>
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
               <h4>Feeds News</h4>
            </a>
        </div>
    </div>
</nav>
    <g:layoutBody/>

</body>
</html>