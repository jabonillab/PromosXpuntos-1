
<%@ page import="CLASSES.Reward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reward.label', default: 'Reward')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-reward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-reward" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list reward">
			
				<g:if test="${rewardInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="reward.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${rewardInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rewardInstance?.pointsRequired}">
				<li class="fieldcontain">
					<span id="pointsRequired-label" class="property-label"><g:message code="reward.pointsRequired.label" default="Points Required" /></span>
					
						<span class="property-value" aria-labelledby="pointsRequired-label"><g:fieldValue bean="${rewardInstance}" field="pointsRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rewardInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="reward.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${rewardInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rewardInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="reward.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${rewardInstance?.product?.id}">${rewardInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rewardInstance?.requesterUsers}">
				<li class="fieldcontain">
					<span id="requesterUsers-label" class="property-label"><g:message code="reward.requesterUsers.label" default="Requester Users" /></span>
					
						<g:each in="${rewardInstance.requesterUsers}" var="r">
						<span class="property-value" aria-labelledby="requesterUsers-label"><g:link controller="standardUser" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rewardInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rewardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
