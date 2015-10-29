
<%@ page import="CLASSES.StandardUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'standardUser.label', default: 'StandardUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-standardUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-standardUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list standardUser">
			
				<g:if test="${standardUserInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="standardUser.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${standardUserInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="standardUser.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${standardUserInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="standardUser.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${standardUserInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.nickname}">
				<li class="fieldcontain">
					<span id="nickname-label" class="property-label"><g:message code="standardUser.nickname.label" default="Nickname" /></span>
					
						<span class="property-value" aria-labelledby="nickname-label"><g:fieldValue bean="${standardUserInstance}" field="nickname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="standardUser.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${standardUserInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="standardUser.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${standardUserInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="standardUser.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${standardUserInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.redeemedRewards}">
				<li class="fieldcontain">
					<span id="redeemedRewards-label" class="property-label"><g:message code="standardUser.redeemedRewards.label" default="Redeemed Rewards" /></span>
					
						<g:each in="${standardUserInstance.redeemedRewards}" var="r">
						<span class="property-value" aria-labelledby="redeemedRewards-label"><g:link controller="reward" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.shopRecords}">
				<li class="fieldcontain">
					<span id="shopRecords-label" class="property-label"><g:message code="standardUser.shopRecords.label" default="Shop Records" /></span>
					
						<g:each in="${standardUserInstance.shopRecords}" var="s">
						<span class="property-value" aria-labelledby="shopRecords-label"><g:link controller="shopRecord" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:standardUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${standardUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
