
<%@ page import="com.fintech.rssfeeds.RssFeed" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="header">
		<g:set var="entityName" value="${message(code: 'rssFeed.label', default: 'RssFeed')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<g:form method="post" controller="rssFeed" action="index">
					<div class="form-group text-right">
						<input type="button" name="refresh" value="Refresh"/>
					</div>
				</g:form>
			</div>
			<div class="row">
				<div class="col-md-12">
					<g:each in="${feeds}" var ="feed">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="row">
									<div style="font-size: large; text-decoration-style: solid">${feed.title}<br></div>
									<div style="font-size: small">${feed.dateUpdated}</div>
								</div>
								<div class="row">
									${feed.description}
								</div>
								<div class="row text-right">
									<a href="${feed.link}" target="_blank">Read More.....</a>
								</div>
							</div>
						</div>
					</g:each>
				</div>
			</div>
		</div>

	</body>
</html>
