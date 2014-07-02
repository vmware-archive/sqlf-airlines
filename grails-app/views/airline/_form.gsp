<%@ page import="com.pivotal.sqlfire.Airline" %>



<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'airline', 'error')} required">
	<label for="airline">
		<g:message code="airline.airline.label" default="Airline" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="airline" required="" value="${airlineInstance?.airline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'airlineFull', 'error')} required">
	<label for="airlineFull">
		<g:message code="airline.airlineFull.label" default="Airline Full" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="airlineFull" required="" value="${airlineInstance?.airlineFull}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'basicRate', 'error')} required">
	<label for="basicRate">
		<g:message code="airline.basicRate.label" default="Basic Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="basicRate" value="${fieldValue(bean: airlineInstance, field: 'basicRate')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'businessLevelFactor', 'error')} required">
	<label for="businessLevelFactor">
		<g:message code="airline.businessLevelFactor.label" default="Business Level Factor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="businessLevelFactor" value="${fieldValue(bean: airlineInstance, field: 'businessLevelFactor')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'businessSeats', 'error')} required">
	<label for="businessSeats">
		<g:message code="airline.businessSeats.label" default="Business Seats" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="businessSeats" type="number" value="${airlineInstance.businessSeats}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'distanceDiscount', 'error')} required">
	<label for="distanceDiscount">
		<g:message code="airline.distanceDiscount.label" default="Distance Discount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="distanceDiscount" value="${fieldValue(bean: airlineInstance, field: 'distanceDiscount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'economySeats', 'error')} required">
	<label for="economySeats">
		<g:message code="airline.economySeats.label" default="Economy Seats" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="economySeats" type="number" value="${airlineInstance.economySeats}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'firstClassLevelFactor', 'error')} required">
	<label for="firstClassLevelFactor">
		<g:message code="airline.firstClassLevelFactor.label" default="First Class Level Factor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="firstClassLevelFactor" value="${fieldValue(bean: airlineInstance, field: 'firstClassLevelFactor')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'firstClassSeats', 'error')} required">
	<label for="firstClassSeats">
		<g:message code="airline.firstClassSeats.label" default="First Class Seats" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="firstClassSeats" type="number" value="${airlineInstance.firstClassSeats}" required=""/>

</div>

