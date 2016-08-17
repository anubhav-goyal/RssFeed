<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="feedLayout">
    <title>Delete</title>
</head>

<body>
<section id="features" class="features section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <g:if test="${urls}">
                    <g:each in="${urls}" var="feedsUrl">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-10">
                                    <div class="item col-md-4 col-sm-6 col-xs-12 text-center">
                                        <div class="content">
                                            <h3>${feedsUrl.url}</h3>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="item col-md-4 col-sm-6 col-xs-12 text-center">
                                        <div class="content">
                                           <h3> <a href="${createLink(controller: "rssFeed", action: "delete",
                                                    params: [url: feedsUrl.url])}">Delete</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </g:each>
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
