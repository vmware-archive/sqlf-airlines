
<%@ page import="com.pivotal.sqlfire.Airline" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'airline.label', default: 'Airline')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-airline" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-airline" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="airline" title="${message(code: 'airline.airline.label', default: 'Airline')}" />
					
						<g:sortableColumn property="airlineFull" title="${message(code: 'airline.airlineFull.label', default: 'Airline Full')}" />
					
						<g:sortableColumn property="basicRate" title="${message(code: 'airline.basicRate.label', default: 'Basic Rate')}" />
					
						<g:sortableColumn property="businessLevelFactor" title="${message(code: 'airline.businessLevelFactor.label', default: 'Business Level Factor')}" />
					
						<g:sortableColumn property="businessSeats" title="${message(code: 'airline.businessSeats.label', default: 'Business Seats')}" />
					
						<g:sortableColumn property="distanceDiscount" title="${message(code: 'airline.distanceDiscount.label', default: 'Distance Discount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${airlineInstanceList}" status="i" var="airlineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${airlineInstance.id}">${fieldValue(bean: airlineInstance, field: "airline")}</g:link></td>
					
						<td>${fieldValue(bean: airlineInstance, field: "airlineFull")}</td>
					
						<td>${fieldValue(bean: airlineInstance, field: "basicRate")}</td>
					
						<td>${fieldValue(bean: airlineInstance, field: "businessLevelFactor")}</td>
					
						<td>${fieldValue(bean: airlineInstance, field: "businessSeats")}</td>
					
						<td>${fieldValue(bean: airlineInstance, field: "distanceDiscount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${airlineInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
