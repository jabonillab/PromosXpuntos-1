
<%@ page import="CLASSES.Campaign" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-campaign" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-campaign" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dueDate" title="${message(code: 'campaign.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'campaign.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="creationDate" title="${message(code: 'campaign.creationDate.label', default: 'Creation Date')}" />
					
						<th><g:message code="campaign.customer.label" default="Customer" /></th>
					
						<th><g:message code="campaign.product.label" default="Product" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${campaignInstanceList}" status="i" var="campaignInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${campaignInstance.id}">${fieldValue(bean: campaignInstance, field: "dueDate")}</g:link></td>
					
						<td>${fieldValue(bean: campaignInstance, field: "description")}</td>
					
						<td><g:formatDate date="${campaignInstance.creationDate}" /></td>
					
						<td>${fieldValue(bean: campaignInstance, field: "customer")}</td>
					
						<td>${fieldValue(bean: campaignInstance, field: "product")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${campaignInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
