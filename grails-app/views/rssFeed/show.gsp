
<%@ page import="com.fintech.rssfeeds.RssFeed" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rssFeed.label', default: 'RssFeed')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rssFeed" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rssFeed" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rssFeed">
			
				<g:if test="${rssFeedInstance?.link}">
				<li class="fieldcontain">
					<span id="link-label" class="property-label"><g:message code="rssFeed.link.label" default="Link" /></span>
					
						<span class="property-value" aria-labelledby="link-label"><g:fieldValue bean="${rssFeedInstance}" field="link"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rssFeedInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="rssFeed.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${rssFeedInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rssFeedInstance?.uri}">
				<li class="fieldcontain">
					<span id="uri-label" class="property-label"><g:message code="rssFeed.uri.label" default="Uri" /></span>
					
						<span class="property-value" aria-labelledby="uri-label"><g:fieldValue bean="${rssFeedInstance}" field="uri"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rssFeedInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="rssFeed.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${rssFeedInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rssFeedInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="rssFeed.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${rssFeedInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rssFeedInstance?.dateUpdated}">
				<li class="fieldcontain">
					<span id="dateUpdated-label" class="property-label"><g:message code="rssFeed.dateUpdated.label" default="Date Updated" /></span>
					
						<span class="property-value" aria-labelledby="dateUpdated-label"><g:fieldValue bean="${rssFeedInstance}" field="dateUpdated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rssFeedInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="rssFeed.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${rssFeedInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rssFeedInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rssFeedInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
