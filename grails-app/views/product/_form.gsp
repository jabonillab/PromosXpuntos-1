<%@ page import="CLASSES.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="200" value="${productInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'offers', 'error')} ">
	<label for="offers">
		<g:message code="product.offers.label" default="Offers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productInstance?.offers?}" var="o">
    <li><g:link controller="offer" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="offer" action="create" params="['product.id': productInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'offer.label', default: 'Offer')])}</g:link>
</li>
</ul>


</div>

