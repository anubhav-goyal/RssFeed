<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="header">
    <title>News</title>
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

        <div class="col-md-2">
            <a href="#delete-modal" data-toggle="modal">Click here for deleting Url</a>
        </div>

        <g:render template="deleteModel" model="[urls: urls]"/>

        <div class="col-md-2">
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
                <g:each in="${feeds}" var="feed">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div style="font-size: large; text-decoration-style: solid">${feed.title}<br></div>

                                <div style="font-size: small">${feed.datePublish}</div>
                            </div>

                            <div class="row">
                                ${raw(feed.description)}
                            </div>

                            <div class="row text-right">
                                <a href="${feed.link}" target="_blank">Read More.....</a>
                            </div>
                        </div>
                    </div>
                </g:each>
            </g:if>
            <g:else>
                Sorry !Nothing to Show
            </g:else>
        </div>
    </div>
</div>

</body>
</html>
