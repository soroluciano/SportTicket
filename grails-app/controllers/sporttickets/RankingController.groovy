package sporttickets



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RankingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ranking.list(params), model:[rankingInstanceCount: Ranking.count()]
    }

    def show(Ranking rankingInstance) {
        respond rankingInstance
    }

    def create() {
        respond new Ranking(params)
    }

    @Transactional
    def save(Ranking rankingInstance) {
        if (rankingInstance == null) {
            notFound()
            return
        }

        if (rankingInstance.hasErrors()) {
            respond rankingInstance.errors, view:'create'
            return
        }

        rankingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rankingInstance.label', default: 'Ranking'), rankingInstance.id])
                redirect rankingInstance
            }
            '*' { respond rankingInstance, [status: CREATED] }
        }
    }

    def edit(Ranking rankingInstance) {
        respond rankingInstance
    }

    @Transactional
    def update(Ranking rankingInstance) {
        if (rankingInstance == null) {
            notFound()
            return
        }

        if (rankingInstance.hasErrors()) {
            respond rankingInstance.errors, view:'edit'
            return
        }

        rankingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ranking.label', default: 'Ranking'), rankingInstance.id])
                redirect rankingInstance
            }
            '*'{ respond rankingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ranking rankingInstance) {

        if (rankingInstance == null) {
            notFound()
            return
        }

        rankingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ranking.label', default: 'Ranking'), rankingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rankingInstance.label', default: 'Ranking'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
