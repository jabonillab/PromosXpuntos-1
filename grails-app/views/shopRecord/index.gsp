
<%@ page import="CLASSES.ShopRecord" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shopRecord.label', default: 'ShopRecord')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shopRecord" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shopRecord" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="consecutive" title="${message(code: 'shopRecord.consecutive.label', default: 'Consecutive')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'shopRecord.date.label', default: 'Date')}" />
					
						<th><g:message code="shopRecord.establishment.label" default="Establishment" /></th>
					
						<th><g:message code="shopRecord.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shopRecordInstanceList}" status="i" var="shopRecordInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shopRecordInstance.id}">${fieldValue(bean: shopRecordInstance, field: "consecutive")}</g:link></td>
					
						<td><g:formatDate date="${shopRecordInstance.date}" /></td>
					
						<td>${fieldValue(bean: shopRecordInstance, field: "establishment")}</td>
					
						<td>${fieldValue(bean: shopRecordInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shopRecordInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
