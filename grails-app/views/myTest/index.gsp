<%--
  Created by IntelliJ IDEA.
  User: anubhav
  Date: 11/8/16
  Time: 7:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="${resource(dir:"css",file: "bootstrap.css")}"/>
    <link rel="stylesheet" href="${resource(dir:"css",file: "bootstrap-theme.css")}"/>

    <g:javascript src="jquery-1.11.1.min.js"/>
    <g:javascript src="bootstrap.min.js"/>
</head>

<body>

<div class="container">
    <div class="row">
        <g:each in="${feeds}" var="valueFeed">
            <div class="col-sm-3">
                ${valueFeed}
            </div>
        </g:each>
    </div>
</div>
%{--<table>--}%
    %{--<g:each in="${feeds}" var="newsFeed">--}%
        %{--<tr>--}%
            %{--<g:each in="${newsFeed}" var="valueFeed">--}%
                %{--<td>${valueFeed.getAuthor()}</td>--}%
                %{--<td>${valueFeed.getTitle()}</td>--}%
                %{--<td>${newsFeed}</td>--}%
                %{--<td>${valueFeed.getUri()}</td>--}%
            %{--</g:each>--}%
        %{--</tr>--}%
    %{--</g:each>--}%
%{--</table>--}%
</body>
</html>