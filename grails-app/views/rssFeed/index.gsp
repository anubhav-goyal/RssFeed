<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="header">
    <title>News</title>

    <script type="text/javascript" charset="utf8"
            src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" charset="utf8"
            src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>

    <link rel="stylesheet" type="text/css"
          href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">

    <script type="text/javascript">
        $(document).ready(function () {
            $('#feedsTable').DataTable({
                "aaSorting": []
            });
        });
    </script>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <g:form class="form-horizontal" controller="rssFeed" action="create">
                <div class="form-group">
                    <label for="url">Enter Url for new Feed</label>
                    <input type="text" name="url" placeholder="url....." id="url" required/>
                    <input type="submit" value="Submit"/>
                </div>
            </g:form>
        </div>

        <div class="col-md-2 text-left">
            <a href="#delete-modal" data-toggle="modal">Click here for deleting Url</a>
        </div>

        <g:render template="deleteModel" model="[urls: urls]"/>

        <div class="col-md-2 text-center">
            <a href="#choosefeed-modal" data-toggle="modal">Choose Options</a>
        </div>
        <g:render template="chooseFeeds" model="[urls: urls]"/>

        <div class="col-md-2">
            <g:form method="post" controller="rssFeed" action="refresh">
                <div class="form-group text-right">
                    <input type="hidden" name="url" value="${refreshUrl}"/>
                    <input type="submit" name="refresh" value="Refresh"/>
                </div>
            </g:form>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12">
            <g:if test="${feeds}">
                <table id="feedsTable" class="display">
                    <thead>
                    <tr>
                        <th>
                            News
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${feeds}" var="feed">
                        <tr>
                            <td style="background-color: white">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div style="font-size: large; text-decoration-style: solid">${feed.title}<br>
                                            </div>

                                            <div style="font-size: small">${feed.datePublish}</div>
                                        </div>

                                        <div class="row">
                                            <show:description val="${feed.description}"/>
                                            %{--${raw(feed.description.replace("&nbsp;","<br/>"))}--}%
                                        </div>

                                        <div class="row text-right">
                                            <g:if test="${!feed.description.contains("Read More")}">
                                                <a href="${feed.link}" target="_blank">Read More.....</a>
                                            </g:if>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </g:if>
            <g:else>
                Sorry !Nothing to Show
            </g:else>
        </div>
    </div>
</div>

</body>
</html>
