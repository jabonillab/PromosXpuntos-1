
<%@ page import="CLASSES.ShopRecord" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shopRecord.label', default: 'ShopRecord')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shopRecord" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shopRecord" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shopRecord">
			
				<g:if test="${shopRecordInstance?.consecutive}">
				<li class="fieldcontain">
					<span id="consecutive-label" class="property-label"><g:message code="shopRecord.consecutive.label" default="Consecutive" /></span>
					
						<span class="property-value" aria-labelledby="consecutive-label"><g:fieldValue bean="${shopRecordInstance}" field="consecutive"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shopRecordInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="shopRecord.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${shopRecordInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${shopRecordInstance?.establishment}">
				<li class="fieldcontain">
					<span id="establishment-label" class="property-label"><g:message code="shopRecord.establishment.label" default="Establishment" /></span>
					
						<span class="property-value" aria-labelledby="establishment-label"><g:link controller="establishment" action="show" id="${shopRecordInstance?.establishment?.id}">${shopRecordInstance?.establishment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shopRecordInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="shopRecord.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="standardUser" action="show" id="${shopRecordInstance?.user?.id}">${shopRecordInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:shopRecordInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${shopRecordInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
