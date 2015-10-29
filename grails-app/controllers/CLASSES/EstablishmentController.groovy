package CLASSES


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EstablishmentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Establishment.list(params), model: [establishmentInstanceCount: Establishment.count()]
    }

    def show(Establishment establishmentInstance) {
        respond establishmentInstance
    }

    def create() {
        respond new Establishment(params)
    }

    @Transactional
    def save(Establishment establishmentInstance) {
        if (establishmentInstance == null) {
            notFound()
            return
        }

        if (establishmentInstance.hasErrors()) {
            respond establishmentInstance.errors, view: 'create'
            return
        }

        establishmentInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'establishment.label', default: 'Establishment'), establishmentInstance.id])
                redirect establishmentInstance
            }
            '*' { respond establishmentInstance, [status: CREATED] }
        }
    }

    def edit(Establishment establishmentInstance) {
        respond establishmentInstance
    }

    @Transactional
    def update(Establishment establishmentInstance) {
        if (establishmentInstance == null) {
            notFound()
            return
        }

        if (establishmentInstance.hasErrors()) {
            respond establishmentInstance.errors, view: 'edit'
            return
        }

        establishmentInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Establishment.label', default: 'Establishment'), establishmentInstance.id])
                redirect establishmentInstance
            }
            '*' { respond establishmentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Establishment establishmentInstance) {

        if (establishmentInstance == null) {
            notFound()
            return
        }

        establishmentInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Establishment.label', default: 'Establishment'), establishmentInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'establishment.label', default: 'Establishment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
