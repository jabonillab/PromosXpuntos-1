<%@ page import="CLASSES.CustomerUser" %>



<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="customerUser.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" required="" value="${customerUserInstance?.identification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="customerUser.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${customerUserInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'contractNumber', 'error')} required">
	<label for="contractNumber">
		<g:message code="customerUser.contractNumber.label" default="Contract Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contractNumber" maxlength="20" required="" value="${customerUserInstance?.contractNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="customerUser.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="200" value="${customerUserInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'office', 'error')} required">
	<label for="office">
		<g:message code="customerUser.office.label" default="Office" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="office" required="" value="${customerUserInstance?.office}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'campaigns', 'error')} ">
	<label for="campaigns">
		<g:message code="customerUser.campaigns.label" default="Campaigns" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerUserInstance?.campaigns?}" var="c">
    <li><g:link controller="campaign" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="campaign" action="create" params="['customerUser.id': customerUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'campaign.label', default: 'Campaign')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="customerUser.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${CLASSES.Customer.list()}" optionKey="id" required="" value="${customerUserInstance?.customer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'establishment', 'error')} ">
	<label for="establishment">
		<g:message code="customerUser.establishment.label" default="Establishment" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerUserInstance?.establishment?}" var="e">
    <li><g:link controller="establishment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="establishment" action="create" params="['customerUser.id': customerUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'establishment.label', default: 'Establishment')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'rewards', 'error')} ">
	<label for="rewards">
		<g:message code="customerUser.rewards.label" default="Rewards" />
		
	</label>
	<g:select name="rewards" from="${CLASSES.Reward.list()}" multiple="multiple" optionKey="id" size="5" value="${customerUserInstance?.rewards*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerUserInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="customerUser.users.label" default="Users" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerUserInstance?.users?}" var="u">
    <li><g:link controller="customerUser" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="customerUser" action="create" params="['customerUser.id': customerUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'customerUser.label', default: 'CustomerUser')])}</g:link>
</li>
</ul>


</div>

