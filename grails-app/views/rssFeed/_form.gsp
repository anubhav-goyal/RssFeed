<%@ page import="com.fintech.rssfeeds.RssFeed" %>



<div class="fieldcontain ${hasErrors(bean: rssFeedInstance, field: 'link', 'error')} required">
	<label for="link">
		<g:message code="rssFeed.link.label" default="Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="link" required="" value="${rssFeedInstance?.link}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rssFeedInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="rssFeed.author.label" default="Author" />
		
	</label>
	<g:textField name="author" value="${rssFeedInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rssFeedInstance, field: 'uri', 'error')} ">
	<label for="uri">
		<g:message code="rssFeed.uri.label" default="Uri" />
		
	</label>
	<g:textField name="uri" value="${rssFeedInstance?.uri}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rssFeedInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="rssFeed.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${rssFeedInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rssFeedInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="rssFeed.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${rssFeedInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rssFeedInstance, field: 'dateUpdated', 'error')} required">
	<label for="dateUpdated">
		<g:message code="rssFeed.dateUpdated.label" default="Date Updated" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dateUpdated" required="" value="${rssFeedInstance?.dateUpdated}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rssFeedInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="rssFeed.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${rssFeedInstance?.title}"/>

</div>

