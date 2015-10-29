<%@ page import="CLASSES.StandardUser" %>



<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="standardUser.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${standardUserInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="standardUser.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${standardUserInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="standardUser.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${standardUserInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'nickname', 'error')} required">
	<label for="nickname">
		<g:message code="standardUser.nickname.label" default="Nickname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nickname" maxlength="20" required="" value="${standardUserInstance?.nickname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="standardUser.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${standardUserInstance.constraints.gender.inList}" required="" value="${standardUserInstance?.gender}" valueMessagePrefix="standardUser.gender"/>

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'telephone', 'error')} required">
	<label for="telephone">
		<g:message code="standardUser.telephone.label" default="Telephone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telephone" maxlength="10" required="" value="${standardUserInstance?.telephone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'birthday', 'error')} required">
	<label for="birthday">
		<g:message code="standardUser.birthday.label" default="Birthday" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthday" precision="day"  value="${standardUserInstance?.birthday}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'redeemedRewards', 'error')} ">
	<label for="redeemedRewards">
		<g:message code="standardUser.redeemedRewards.label" default="Redeemed Rewards" />
		
	</label>
	<g:select name="redeemedRewards" from="${CLASSES.Reward.list()}" multiple="multiple" optionKey="id" size="5" value="${standardUserInstance?.redeemedRewards*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'shopRecords', 'error')} ">
	<label for="shopRecords">
		<g:message code="standardUser.shopRecords.label" default="Shop Records" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${standardUserInstance?.shopRecords?}" var="s">
    <li><g:link controller="shopRecord" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="shopRecord" action="create" params="['standardUser.id': standardUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shopRecord.label', default: 'ShopRecord')])}</g:link>
</li>
</ul>


</div>

