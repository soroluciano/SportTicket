<%@ page import="sporttickets.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'idSocio', 'error')} required">
	<label for="idSocio">
		<g:message code="usuario.idSocio.label" default="Id Socio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idSocio" type="number" value="${usuarioInstance.idSocio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="usuario.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${usuarioInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="usuario.mail.label" default="Mail" />
		
	</label>
	<g:field type="email" name="mail" value="${usuarioInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="usuario.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dni" type="number" value="${usuarioInstance.dni}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tipoUsuario', 'error')} required">
	<label for="tipoUsuario">
		<g:message code="usuario.tipoUsuario.label" default="Tipo Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tipoUsuario" type="number" value="${usuarioInstance.tipoUsuario}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cantidadEventos', 'error')} required">
	<label for="cantidadEventos">
		<g:message code="usuario.cantidadEventos.label" default="Cantidad Eventos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidadEventos" type="number" value="${usuarioInstance.cantidadEventos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'promedio', 'error')} required">
	<label for="promedio">
		<g:message code="usuario.promedio.label" default="Promedio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="promedio" type="number" value="${usuarioInstance.promedio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'comprobantereserva', 'error')} required">
	<label for="comprobantereserva">
		<g:message code="usuario.comprobantereserva.label" default="Comprobantereserva" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="comprobantereserva" name="comprobantereserva.id" from="${sporttickets.ComprobanteReserva.list()}" optionKey="id" required="" value="${usuarioInstance?.comprobantereserva?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'rankings', 'error')} ">
	<label for="rankings">
		<g:message code="usuario.rankings.label" default="Rankings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioInstance?.rankings?}" var="r">
    <li><g:link controller="ranking" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="ranking" action="create" params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ranking.label', default: 'Ranking')])}</g:link>
</li>
</ul>


</div>

