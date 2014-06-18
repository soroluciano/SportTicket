<%@ page import="sporttickets.Ranking" %>



<div class="fieldcontain ${hasErrors(bean: rankingInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="ranking.usuario.label" default="Usuario" />
		
	</label>
	<g:select name="usuario" from="${sporttickets.Usuario.list()}" multiple="multiple" optionKey="id" size="5" value="${rankingInstance?.usuario*.id}" class="many-to-many"/>

</div>

