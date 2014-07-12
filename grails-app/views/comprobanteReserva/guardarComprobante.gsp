<g:form url="[resource:usuarioInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
					<g:select name="sectores" from="${ListaSectores()}" value="${nombre}" optionKey="nombre" multiple="true" />
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>