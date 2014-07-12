
<%@ page import="sporttickets.Partido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'partido.label', default: 'Partido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-partido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-partido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list partido">
			
				<g:if test="${partidoInstance?.fechaHora}">
				<li class="fieldcontain">
					<span id="fechaHora-label" class="property-label"><g:message code="partido.fechaHora.label" default="Fecha Hora" /></span>
					
						<span class="property-value" aria-labelledby="fechaHora-label"><g:formatDate date="${partidoInstance?.fechaHora}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${partidoInstance?.asistencias}">
				<li class="fieldcontain">
					<span id="asistencias-label" class="property-label"><g:message code="partido.asistencias.label" default="Asistencias" /></span>
					
						<g:each in="${partidoInstance.asistencias}" var="a">
						<span class="property-value" aria-labelledby="asistencias-label"><g:link controller="asistencia" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${partidoInstance?.estadio}">
				<li class="fieldcontain">
					<span id="estadio-label" class="property-label"><g:message code="partido.estadio.label" default="Estadio" /></span>
					
						<span class="property-value" aria-labelledby="estadio-label"><g:link controller="estadio" action="show" id="${partidoInstance?.estadio?.id}">${partidoInstance?.estadio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:partidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${partidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
