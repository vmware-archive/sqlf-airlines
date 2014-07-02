
<%@ page import="com.pivotal.sqlfire.Airline" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'airline.label', default: 'Airline')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-airline" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-airline" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list airline">
			
				<g:if test="${airlineInstance?.airline}">
				<li class="fieldcontain">
					<span id="airline-label" class="property-label"><g:message code="airline.airline.label" default="Airline" /></span>
					
						<span class="property-value" aria-labelledby="airline-label"><g:fieldValue bean="${airlineInstance}" field="airline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.airlineFull}">
				<li class="fieldcontain">
					<span id="airlineFull-label" class="property-label"><g:message code="airline.airlineFull.label" default="Airline Full" /></span>
					
						<span class="property-value" aria-labelledby="airlineFull-label"><g:fieldValue bean="${airlineInstance}" field="airlineFull"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.basicRate}">
				<li class="fieldcontain">
					<span id="basicRate-label" class="property-label"><g:message code="airline.basicRate.label" default="Basic Rate" /></span>
					
						<span class="property-value" aria-labelledby="basicRate-label"><g:fieldValue bean="${airlineInstance}" field="basicRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.businessLevelFactor}">
				<li class="fieldcontain">
					<span id="businessLevelFactor-label" class="property-label"><g:message code="airline.businessLevelFactor.label" default="Business Level Factor" /></span>
					
						<span class="property-value" aria-labelledby="businessLevelFactor-label"><g:fieldValue bean="${airlineInstance}" field="businessLevelFactor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.businessSeats}">
				<li class="fieldcontain">
					<span id="businessSeats-label" class="property-label"><g:message code="airline.businessSeats.label" default="Business Seats" /></span>
					
						<span class="property-value" aria-labelledby="businessSeats-label"><g:fieldValue bean="${airlineInstance}" field="businessSeats"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.distanceDiscount}">
				<li class="fieldcontain">
					<span id="distanceDiscount-label" class="property-label"><g:message code="airline.distanceDiscount.label" default="Distance Discount" /></span>
					
						<span class="property-value" aria-labelledby="distanceDiscount-label"><g:fieldValue bean="${airlineInstance}" field="distanceDiscount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.economySeats}">
				<li class="fieldcontain">
					<span id="economySeats-label" class="property-label"><g:message code="airline.economySeats.label" default="Economy Seats" /></span>
					
						<span class="property-value" aria-labelledby="economySeats-label"><g:fieldValue bean="${airlineInstance}" field="economySeats"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.firstClassLevelFactor}">
				<li class="fieldcontain">
					<span id="firstClassLevelFactor-label" class="property-label"><g:message code="airline.firstClassLevelFactor.label" default="First Class Level Factor" /></span>
					
						<span class="property-value" aria-labelledby="firstClassLevelFactor-label"><g:fieldValue bean="${airlineInstance}" field="firstClassLevelFactor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airlineInstance?.firstClassSeats}">
				<li class="fieldcontain">
					<span id="firstClassSeats-label" class="property-label"><g:message code="airline.firstClassSeats.label" default="First Class Seats" /></span>
					
						<span class="property-value" aria-labelledby="firstClassSeats-label"><g:fieldValue bean="${airlineInstance}" field="firstClassSeats"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:airlineInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${airlineInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
