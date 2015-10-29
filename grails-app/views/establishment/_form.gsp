<%@ page import="CLASSES.Establishment" %>



<div class="fieldcontain ${hasErrors(bean: establishmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="establishment.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${establishmentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: establishmentInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="establishment.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${establishmentInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: establishmentInstance, field: 'telephoneNumber', 'error')} required">
	<label for="telephoneNumber">
		<g:message code="establishment.telephoneNumber.label" default="Telephone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telephoneNumber" maxlength="20" required="" value="${establishmentInstance?.telephoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: establishmentInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="establishment.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${CLASSES.Customer.list()}" optionKey="id" required="" value="${establishmentInstance?.customer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: establishmentInstance, field: 'shopRecords', 'error')} ">
	<label for="shopRecords">
		<g:message code="establishment.shopRecords.label" default="Shop Records" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${establishmentInstance?.shopRecords?}" var="s">
    <li><g:link controller="shopRecord" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="shopRecord" action="create" params="['establishment.id': establishmentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shopRecord.label', default: 'ShopRecord')])}</g:link>
</li>
</ul>


</div>

