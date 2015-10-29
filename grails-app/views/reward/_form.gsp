<%@ page import="CLASSES.Reward" %>



<div class="fieldcontain ${hasErrors(bean: rewardInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="reward.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${rewardInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: rewardInstance, field: 'pointsRequired', 'error')} required">
	<label for="pointsRequired">
		<g:message code="reward.pointsRequired.label" default="Points Required" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pointsRequired" type="number" min="0" value="${rewardInstance.pointsRequired}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: rewardInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="reward.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${rewardInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: rewardInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="reward.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${CLASSES.Product.list()}" optionKey="id" required="" value="${rewardInstance?.product?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rewardInstance, field: 'requesterUsers', 'error')} ">
	<label for="requesterUsers">
		<g:message code="reward.requesterUsers.label" default="Requester Users" />
		
	</label>
	

</div>

