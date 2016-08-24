<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="feedLayout">
    <title>Create URL</title>
</head>

<body>
<section id="contact" class="contact section has-pattern">
    <div class="container">
        <div class="row text-center" style="margin-top: 100px">
            <h2 class="title">Add New URL</h2>

            <div class="intro col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <p>You can add new URL for receiving Updates</p>
            </div>
        </div><!--//row-->
        <div class="row text-center">
            <div class="contact-form col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <g:form class="form" controller="rssFeed" action="create">
                    <div class="form-group name">
                        <g:if test="${flash.message}">
                            ${flash.message}
                        </g:if>
                    </div>
                    <div class="form-group name">
                        <label class="sr-only" for="url"><g:message code="default.label.feed.url" default="Enter URL"/> </label>
                        <input id="url" type="text" name="url" class="form-control" placeholder="URL:" required>
                    </div><!--//form-group-->
                    <button type="submit" class="btn btn-lg btn-theme">Create</button>
                </g:form><!--//form-->
            </div><!--//contact-form-->
        </div><!--//row-->
    </div><!--//container-->
</section><!--//contact-->
</body>
</html>
