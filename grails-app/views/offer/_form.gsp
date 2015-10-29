<%@ page import="CLASSES.Offer" %>



<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="offer.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${offerInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="offer.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${offerInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="offer.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${CLASSES.Product.list()}" optionKey="id" required="" value="${offerInstance?.product?.id}" class="many-to-one"/>

</div>

