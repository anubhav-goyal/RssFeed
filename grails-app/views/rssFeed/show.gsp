<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="feedLayout">
    <title>View Feeds</title>
</head>

<body>
<section id="how" class="how section has-pattern">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <g:if test="${feeds}">
                    <div class="row">
                        <div class="col-md-12 text-right">
                            <g:form class="form-group" controller="rssFeed" action="refresh">
                                <input type="hidden" name="url" value="${url}"/>
                                <button type="submit" class="btn btn-default" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
                                </button>
                            </g:form>
                        </div>
                    </div>
                    <g:each in="${feeds}" var="feed">
                        <div class="panel panel-default panel-body">
                            <div class="item col-md-12 text-left">
                                <div class="content">
                                    <div class="row">
                                        <h3>${feed.title}</h3>
                                    </div>

                                    <div class="row">
                                        <fmtDate:formattingDate val="${feed.datePublish}"/>
                                    </div>

                                    <div class="row">
                                        ${raw(feed.description)}
                                    </div>

                                    <div class="row text-right">
                                        <a href="${feed.link}" target="_blank">Read More.....</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </g:each>
                    <div class="item col-md-12 text-center">
                        <g:if test="${url}">
                            <g:paginate total="${countFeed}" controller="rssFeed" action="selectedUrlFeed" max="3"
                                        params="[url: url]"/>
                        </g:if>
                        <g:else>
                            <g:paginate total="${countFeed}" controller="rssFeed" action="feedList" max="3"/>
                        </g:else>
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
