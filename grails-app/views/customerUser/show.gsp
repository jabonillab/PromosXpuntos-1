
<%@ page import="CLASSES.CustomerUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerUser.label', default: 'CustomerUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customerUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customerUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customerUser">
			
				<g:if test="${customerUserInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="customerUser.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${customerUserInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="customerUser.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${customerUserInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.contractNumber}">
				<li class="fieldcontain">
					<span id="contractNumber-label" class="property-label"><g:message code="customerUser.contractNumber.label" default="Contract Number" /></span>
					
						<span class="property-value" aria-labelledby="contractNumber-label"><g:fieldValue bean="${customerUserInstance}" field="contractNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="customerUser.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${customerUserInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.office}">
				<li class="fieldcontain">
					<span id="office-label" class="property-label"><g:message code="customerUser.office.label" default="Office" /></span>
					
						<span class="property-value" aria-labelledby="office-label"><g:fieldValue bean="${customerUserInstance}" field="office"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.campaigns}">
				<li class="fieldcontain">
					<span id="campaigns-label" class="property-label"><g:message code="customerUser.campaigns.label" default="Campaigns" /></span>
					
						<g:each in="${customerUserInstance.campaigns}" var="c">
						<span class="property-value" aria-labelledby="campaigns-label"><g:link controller="campaign" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.customer}">
				<li class="fieldcontain">
					<span id="customer-label" class="property-label"><g:message code="customerUser.customer.label" default="Customer" /></span>
					
						<span class="property-value" aria-labelledby="customer-label"><g:link controller="customer" action="show" id="${customerUserInstance?.customer?.id}">${customerUserInstance?.customer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.establishment}">
				<li class="fieldcontain">
					<span id="establishment-label" class="property-label"><g:message code="customerUser.establishment.label" default="Establishment" /></span>
					
						<g:each in="${customerUserInstance.establishment}" var="e">
						<span class="property-value" aria-labelledby="establishment-label"><g:link controller="establishment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.rewards}">
				<li class="fieldcontain">
					<span id="rewards-label" class="property-label"><g:message code="customerUser.rewards.label" default="Rewards" /></span>
					
						<g:each in="${customerUserInstance.rewards}" var="r">
						<span class="property-value" aria-labelledby="rewards-label"><g:link controller="reward" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${customerUserInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="customerUser.users.label" default="Users" /></span>
					
						<g:each in="${customerUserInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="customerUser" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:customerUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${customerUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
