
<%@ page import="CLASSES.Campaign" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-campaign" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-campaign" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list campaign">
			
				<g:if test="${campaignInstance?.dueDateCampaign}">
				<li class="fieldcontain">
					<span id="dueDateCampaign-label" class="property-label"><g:message code="campaign.dueDateCampaign.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDateCampaign-label"><g:formatDate date="${campaignInstance?.dueDateCampaign}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${campaignInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="campaign.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${campaignInstance}" field="description"/></span>
					
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													</li>
				</g:if>
			
				<g:if test="${campaignInstance?.creationDateCampaign}">
				<li class="fieldcontain">
					<span id="creationDateCampaign-label" class="property-label"><g:message code="campaign.creationDateCampaign.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDateCampaign-label"><g:formatDate date="${campaignInstance?.creationDateCampaign}" /></span>
					
				</li>
				</g:if>

			

			
			</ol>
			<g:form url="[resource:campaignInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${campaignInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
