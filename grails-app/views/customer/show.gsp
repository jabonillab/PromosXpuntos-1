
<%@ page import="CLASSES.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="customer.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${customerInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="customer.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${customerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.contractNumber}">
				<li class="fieldcontain">
					<span id="contractNumber-label" class="property-label"><g:message code="customer.contractNumber.label" default="Contract Number" /></span>
					
						<span class="property-value" aria-labelledby="contractNumber-label"><g:fieldValue bean="${customerInstance}" field="contractNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="customer.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${customerInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.campaigns}">
				<li class="fieldcontain">
					<span id="campaigns-label" class="property-label"><g:message code="customer.campaigns.label" default="Campaigns" /></span>
					
						<g:each in="${customerInstance.campaigns}" var="c">
						<span class="property-value" aria-labelledby="campaigns-label"><g:link controller="campaign" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.establishment}">
				<li class="fieldcontain">
					<span id="establishment-label" class="property-label"><g:message code="customer.establishment.label" default="Establishment" /></span>
					
						<g:each in="${customerInstance.establishment}" var="e">
						<span class="property-value" aria-labelledby="establishment-label"><g:link controller="establishment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.rewards}">
				<li class="fieldcontain">
					<span id="rewards-label" class="property-label"><g:message code="customer.rewards.label" default="Rewards" /></span>
					
						<g:each in="${customerInstance.rewards}" var="r">
						<span class="property-value" aria-labelledby="rewards-label"><g:link controller="reward" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="customer.users.label" default="Users" /></span>
					
						<g:each in="${customerInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="customerUser" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:customerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${customerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
