
<%@ page import="CLASSES.StandardUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'standardUser.label', default: 'StandardUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-standardUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-standardUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'standardUser.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'standardUser.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'standardUser.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="nickname" title="${message(code: 'standardUser.nickname.label', default: 'Nickname')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'standardUser.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="telephone" title="${message(code: 'standardUser.telephone.label', default: 'Telephone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${standardUserInstanceList}" status="i" var="standardUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${standardUserInstance.id}">${fieldValue(bean: standardUserInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "nickname")}</td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "telephone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${standardUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
