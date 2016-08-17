<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="feedLayout">
    <title>News</title>
</head>

<body>
<section id="promo" class="promo section offset-header has-pattern">
    <div class="container">
        <div class="row">
            <div class="overview col-md-8 col-sm-12 col-xs-12">
                <h2 class="title">Welcome</h2>
                <ul class="summary">
                    <li>You can add any new RSS fedd URL For getting News</li>
                    <li>Delete your Stored URL</li>
                    <li>Enjoy of Reading latest feeds according to your Choice</li>
                </ul>
            </div><!--//overview-->
        </div>
    </div>
</section>
        %{--<div class="container">--}%
    %{--<div class="row">--}%
        %{--<div class="col-md-6">--}%
            %{--<g:form class="form-horizontal" controller="rssFeed" action="create">--}%
                %{--<div class="form-group">--}%
                    %{--<label for="url"><g:message code="default.label.feed.url"--}%
                                                %{--default="Enter URL for new Feeds"/></label>--}%
                    %{--<input type="text" name="url" placeholder="url....." id="url" required/>--}%
                    %{--<input type="submit" value="Submit"/>--}%
                %{--</div>--}%
            %{--</g:form>--}%
        %{--</div>--}%

        %{--<div class="col-md-2 text-left">--}%
            %{--<a href="#delete-modal" data-toggle="modal"><g:message code="default.information.delete.info"--}%
                                                                   %{--default="Click Here For deleting URL"/></a>--}%
        %{--</div>--}%

        %{--<g:render template="deleteModel" model="[urls: urls]"/>--}%

        %{--<div class="col-md-2 text-center">--}%
            %{--<a href="#choosefeed-modal" data-toggle="modal"><g:message code="default.information.choose.list"--}%
                                                                       %{--default="Select URL for feed"/></a>--}%
        %{--</div>--}%
        %{--<g:render template="chooseFeeds" model="[urls: urls]"/>--}%

        %{--<div class="col-md-2">--}%
            %{--<g:form method="post" controller="rssFeed" action="refresh">--}%
                %{--<div class="form-group text-right">--}%
                    %{--<input type="hidden" name="url" value="${refreshUrl}"/>--}%
                    %{--<input type="submit" name="refresh" value="Refresh"/>--}%
                %{--</div>--}%
            %{--</g:form>--}%
        %{--</div>--}%

    %{--</div>--}%

    %{--<div class="row">--}%
        %{--<div class="col-md-12">--}%
            %{--<g:if test="${feeds}">--}%
                %{--<g:each in="${feeds}" var="feed">--}%
                    %{--<div class="panel panel-default">--}%
                        %{--<div class="panel-body">--}%
                            %{--<div class="row">--}%
                                %{--<div style="font-size: large; text-decoration-style: solid">${feed.title}<br>--}%
                                %{--</div>--}%

                                %{--<div style="font-size: small">${feed.datePublish}</div>--}%
                            %{--</div>--}%

                            %{--<div class="row">--}%
                                %{--<show:description val="${feed.description}"/>--}%
                                %{--${raw(feed.description)}--}%
                            %{--</div>--}%

                            %{--<div class="row text-right">--}%
                                %{--<a href="${feed.link}" target="_blank">Read More.....</a>--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</g:each>--}%
                %{--<div class="col-md-12">--}%
                    %{--<g:paginate total="${countFeed}" controller="rssFeed" action="feedList" max="3" />--}%
                %{--</div>--}%
            %{--</g:if>--}%
            %{--<g:else>--}%
                %{--<g:message code="default.error.messgae.info" default="Sorry Nothing to Display"/>--}%
            %{--</g:else>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%
</body>
</html>
