<%@ page import="CLASSES.Campaign" %>



<div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="campaign.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${campaignInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="campaign.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${campaignInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="campaign.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${campaignInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="campaign.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${CLASSES.Customer.list()}" optionKey="id" required="" value="${campaignInstance?.customer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="campaign.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${CLASSES.Product.list()}" optionKey="id" required="" value="${campaignInstance?.product?.id}" class="many-to-one"/>

</div>

