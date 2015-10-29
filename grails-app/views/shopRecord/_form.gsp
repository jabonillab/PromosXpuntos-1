<%@ page import="CLASSES.ShopRecord" %>



<div class="fieldcontain ${hasErrors(bean: shopRecordInstance, field: 'consecutive', 'error')} required">
	<label for="consecutive">
		<g:message code="shopRecord.consecutive.label" default="Consecutive" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="consecutive" required="" value="${shopRecordInstance?.consecutive}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shopRecordInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="shopRecord.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${shopRecordInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: shopRecordInstance, field: 'establishment', 'error')} required">
	<label for="establishment">
		<g:message code="shopRecord.establishment.label" default="Establishment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="establishment" name="establishment.id" from="${CLASSES.Establishment.list()}" optionKey="id" required="" value="${shopRecordInstance?.establishment?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shopRecordInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="shopRecord.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${CLASSES.StandardUser.list()}" optionKey="id" required="" value="${shopRecordInstance?.user?.id}" class="many-to-one"/>

</div>

