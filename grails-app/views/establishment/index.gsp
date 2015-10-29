
<%@ page import="CLASSES.Establishment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'establishment.label', default: 'Establishment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-establishment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-establishment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'establishment.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'establishment.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="telephoneNumber" title="${message(code: 'establishment.telephoneNumber.label', default: 'Telephone Number')}" />
					
						<th><g:message code="establishment.customer.label" default="Customer" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${establishmentInstanceList}" status="i" var="establishmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${establishmentInstance.id}">${fieldValue(bean: establishmentInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: establishmentInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: establishmentInstance, field: "telephoneNumber")}</td>
					
						<td>${fieldValue(bean: establishmentInstance, field: "customer")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${establishmentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
