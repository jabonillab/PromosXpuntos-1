<%@ page import="CLASSES.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="customer.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" required="" value="${customerInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="customer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${customerInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'contractNumber', 'error')} required">
	<label for="contractNumber">
		<g:message code="customer.contractNumber.label" default="Contract Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contractNumber" maxlength="20" required="" value="${customerInstance?.contractNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="customer.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="200" value="${customerInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'campaigns', 'error')} ">
	<label for="campaigns">
		<g:message code="customer.campaigns.label" default="Campaigns" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerInstance?.campaigns?}" var="c">
    <li><g:link controller="campaign" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="campaign" action="create" params="['customer.id': customerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'campaign.label', default: 'Campaign')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'establishment', 'error')} ">
	<label for="establishment">
		<g:message code="customer.establishment.label" default="Establishment" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerInstance?.establishment?}" var="e">
    <li><g:link controller="establishment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="establishment" action="create" params="['customer.id': customerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'establishment.label', default: 'Establishment')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'rewards', 'error')} ">
	<label for="rewards">
		<g:message code="customer.rewards.label" default="Rewards" />
		
	</label>
	<g:select name="rewards" from="${CLASSES.Reward.list()}" multiple="multiple" optionKey="id" size="5" value="${customerInstance?.rewards*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="customer.users.label" default="Users" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerInstance?.users?}" var="u">
    <li><g:link controller="customerUser" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="customerUser" action="create" params="['customer.id': customerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'customerUser.label', default: 'CustomerUser')])}</g:link>
</li>
</ul>


</div>

