<%@ page import="sporttickets.Partido" %>



<div class="fieldcontain ${hasErrors(bean: partidoInstance, field: 'fechaHora', 'error')} required">
	<label for="fechaHora">
		<g:message code="partido.fechaHora.label" default="Fecha Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaHora" precision="day"  value="${partidoInstance?.fechaHora}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: partidoInstance, field: 'asistencias', 'error')} ">
	<label for="asistencias">
		<g:message code="partido.asistencias.label" default="Asistencias" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${partidoInstance?.asistencias?}" var="a">
    <li><g:link controller="asistencia" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="asistencia" action="create" params="['partido.id': partidoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'asistencia.label', default: 'Asistencia')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: partidoInstance, field: 'estadio', 'error')} required">
	<label for="estadio">
		<g:message code="partido.estadio.label" default="Estadio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estadio" name="estadio.id" from="${sporttickets.Estadio.list()}" optionKey="id" required="" value="${partidoInstance?.estadio?.id}" class="many-to-one"/>

</div>

