package sporttickets



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComprobanteReservaController {
	def guardarComprobante(){
		ComprobanteReserva comprobante = new ComprobanteReserva();
		
	}
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ComprobanteReserva.list(params), model:[comprobanteReservaInstanceCount: ComprobanteReserva.count()]
    }

    def show(ComprobanteReserva comprobanteReservaInstance) {
        respond comprobanteReservaInstance
    }

    def create() {
        respond new ComprobanteReserva(params)
    }

    @Transactional
    def save(ComprobanteReserva comprobanteReservaInstance) {
        if (comprobanteReservaInstance == null) {
            notFound()
            return
        }

        if (comprobanteReservaInstance.hasErrors()) {
            respond comprobanteReservaInstance.errors, view:'create'
            return
        }

        comprobanteReservaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'comprobanteReservaInstance.label', default: 'ComprobanteReserva'), comprobanteReservaInstance.NroComprobante])
                redirect comprobanteReservaInstance
            }
            '*' { respond comprobanteReservaInstance, [status: CREATED] }
        }
    }

    def edit(ComprobanteReserva comprobanteReservaInstance) {
        respond comprobanteReservaInstance
    }

    @Transactional
    def update(ComprobanteReserva comprobanteReservaInstance) {
        if (comprobanteReservaInstance == null) {
            notFound()
            return
        }

        if (comprobanteReservaInstance.hasErrors()) {
            respond comprobanteReservaInstance.errors, view:'edit'
            return
        }

        comprobanteReservaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ComprobanteReserva.label', default: 'ComprobanteReserva'), comprobanteReservaInstance.id])
                redirect comprobanteReservaInstance
            }
            '*'{ respond comprobanteReservaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ComprobanteReserva comprobanteReservaInstance) {

        if (comprobanteReservaInstance == null) {
            notFound()
            return
        }

        comprobanteReservaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ComprobanteReserva.label', default: 'ComprobanteReserva'), comprobanteReservaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobanteReservaInstance.label', default: 'ComprobanteReserva'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
