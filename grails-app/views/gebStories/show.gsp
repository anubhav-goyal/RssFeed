<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="feedLayout">
    <title>View Feeds</title>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip({
                placement: 'bottom'
            })
        });

    </script>
</head>

<body>
<section id="how" class="how section has-pattern">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <g:if test="${stories}">
                    <div class="row">
                        <div class="col-md-12 text-right" style="margin-top: 10px">
                            <g:form class="form-group" controller="rssFeed" action="refresh">
                                <input type="hidden" name="url" value=""/>
                                <button type="submit" class="btn btn-default" aria-label="Left Align"
                                        data-toggle="tooltip" title="Refresh">
                                    <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
                                </button>
                            </g:form>
                        </div>
                    </div>
                    <g:each in="${stories}" var="feed">
                        <div class="panel panel-default panel-body">
                            <div class="item col-md-12 text-left">
                                <div class="content">
                                    <div class="row text-danger">
                                        <h3>${feed.title}</h3>
                                    </div>

                                    <div class="row">
                                        ${feed.author} ,  ${feed.publishDate}
                                    </div>

                                    <div class="row">
                                        ${raw(feed.description)}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </g:each>
                    <div class="item col-md-12 text-center">
                            <g:paginate total="${countStory}" controller="gebStroies" action="storyList" max="1"/>
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
