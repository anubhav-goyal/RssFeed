<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="feedLayout">
    <title>View Feeds</title>
</head>

<body>
<section id="features" class="features section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <g:if test="${urlFeeds}">
                    <g:each in="${urlFeeds}" var="feed">
                        <div class="item col-md-12 text-left">
                            <div class="content">
                                <a href="${g.createLink(controller: "rssFeed", action: "selectedUrlFeed", params: [url: feed.url])}">
                                    ${feed.url}
                                </a>
                            </div>
                        </div>
                    </g:each>
                    <div class="item col-md-12 text-center">
                        <g:paginate total="${countFeed}" controller="urlFeed" action="urlList" max="3"/>
                    </div>
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
