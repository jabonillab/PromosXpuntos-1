
<%@ page import="CLASSES.Reward" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reward.label', default: 'Reward')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-reward" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-reward" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dueDate" title="${message(code: 'reward.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="pointsRequired" title="${message(code: 'reward.pointsRequired.label', default: 'Points Required')}" />
					
						<g:sortableColumn property="creationDate" title="${message(code: 'reward.creationDate.label', default: 'Creation Date')}" />
					
						<th><g:message code="reward.product.label" default="Product" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rewardInstanceList}" status="i" var="rewardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rewardInstance.id}">${fieldValue(bean: rewardInstance, field: "dueDate")}</g:link></td>
					
						<td>${fieldValue(bean: rewardInstance, field: "pointsRequired")}</td>
					
						<td><g:formatDate date="${rewardInstance.creationDate}" /></td>
					
						<td>${fieldValue(bean: rewardInstance, field: "product")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rewardInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
