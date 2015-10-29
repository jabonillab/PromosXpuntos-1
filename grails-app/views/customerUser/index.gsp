
<%@ page import="CLASSES.CustomerUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerUser.label', default: 'CustomerUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customerUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customerUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="identification" title="${message(code: 'customerUser.identification.label', default: 'Identification')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'customerUser.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="contractNumber" title="${message(code: 'customerUser.contractNumber.label', default: 'Contract Number')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'customerUser.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="office" title="${message(code: 'customerUser.office.label', default: 'Office')}" />
					
						<th><g:message code="customerUser.customer.label" default="Customer" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerUserInstanceList}" status="i" var="customerUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerUserInstance.id}">${fieldValue(bean: customerUserInstance, field: "identification")}</g:link></td>
					
						<td>${fieldValue(bean: customerUserInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: customerUserInstance, field: "contractNumber")}</td>
					
						<td>${fieldValue(bean: customerUserInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: customerUserInstance, field: "office")}</td>
					
						<td>${fieldValue(bean: customerUserInstance, field: "customer")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
