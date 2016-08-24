<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="feedLayout">
    <title>View Feeds</title>
</head>

<body>
<section id="how" class="how section has-pattern" style="margin-top: 50px;height: 600px">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <g:if test="${urlFeeds}">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <td><b>Id</b></td>
                                <td><b>Url Link</b></td>
                                <td><b>Date Created</b></td>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${urlFeeds}" var="feed">
                                <tr>
                                        <td>${feed.id}</td>
                                        <td><a href="${g.createLink(controller: "rssFeed", action: "selectedUrlFeed", params: [url: feed.url])}">
                                            ${feed.url}
                                        </a></td>
                                        <td>
                                            <fmtDate:formattingDate val="${feed.dateCreated}"/>
                                        </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                        <g:paginate total="${countUrl}" controller="urlFeed" action="urlList" max="5"/>
                </g:if>
                <g:else>
                    <h3>Sorry Nothing To Display Here</h3>
                </g:else>
            </div>
        </div><!--//row-->
    </div><!--//container-->
</section><!--//features-->

</body>
</html>
