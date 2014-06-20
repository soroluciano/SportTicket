
<%@ page import="sporttickets.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.idSocio}">
				<li class="fieldcontain">
					<span id="idSocio-label" class="property-label"><g:message code="usuario.idSocio.label" default="Id Socio" /></span>
					
						<span class="property-value" aria-labelledby="idSocio-label"><g:fieldValue bean="${usuarioInstance}" field="idSocio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="usuario.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${usuarioInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="usuario.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${usuarioInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.contrasenia}">
				<li class="fieldcontain">
					<span id="contrasenia-label" class="property-label"><g:message code="usuario.contrasenia.label" default="Contrasenia" /></span>
					
						<span class="property-value" aria-labelledby="contrasenia-label"><g:fieldValue bean="${usuarioInstance}" field="contrasenia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.dni}">
				<li class="fieldcontain">
					<span id="dni-label" class="property-label"><g:message code="usuario.dni.label" default="Dni" /></span>
					
						<span class="property-value" aria-labelledby="dni-label"><g:fieldValue bean="${usuarioInstance}" field="dni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.tipoUsuario}">
				<li class="fieldcontain">
					<span id="tipoUsuario-label" class="property-label"><g:message code="usuario.tipoUsuario.label" default="Tipo Usuario" /></span>
					
						<span class="property-value" aria-labelledby="tipoUsuario-label"><g:fieldValue bean="${usuarioInstance}" field="tipoUsuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.cantidadEventos}">
				<li class="fieldcontain">
					<span id="cantidadEventos-label" class="property-label"><g:message code="usuario.cantidadEventos.label" default="Cantidad Eventos" /></span>
					
						<span class="property-value" aria-labelledby="cantidadEventos-label"><g:fieldValue bean="${usuarioInstance}" field="cantidadEventos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.promedio}">
				<li class="fieldcontain">
					<span id="promedio-label" class="property-label"><g:message code="usuario.promedio.label" default="Promedio" /></span>
					
						<span class="property-value" aria-labelledby="promedio-label"><g:fieldValue bean="${usuarioInstance}" field="promedio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
