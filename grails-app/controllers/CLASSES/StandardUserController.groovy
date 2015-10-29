package CLASSES


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StandardUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StandardUser.list(params), model: [standardUserInstanceCount: StandardUser.count()]
    }

    def show(StandardUser standardUserInstance) {
        respond standardUserInstance
    }

    def create() {
        respond new StandardUser(params)
    }

    @Transactional
    def save(StandardUser standardUserInstance) {
        if (standardUserInstance == null) {
            notFound()
            return
        }

        if (standardUserInstance.hasErrors()) {
            respond standardUserInstance.errors, view: 'create'
            return
        }

        standardUserInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), standardUserInstance.id])
                redirect standardUserInstance
            }
            '*' { respond standardUserInstance, [status: CREATED] }
        }
    }

    def edit(StandardUser standardUserInstance) {
        respond standardUserInstance
    }

    @Transactional
    def update(StandardUser standardUserInstance) {
        if (standardUserInstance == null) {
            notFound()
            return
        }

        if (standardUserInstance.hasErrors()) {
            respond standardUserInstance.errors, view: 'edit'
            return
        }

        standardUserInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StandardUser.label', default: 'StandardUser'), standardUserInstance.id])
                redirect standardUserInstance
            }
            '*' { respond standardUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StandardUser standardUserInstance) {

        if (standardUserInstance == null) {
            notFound()
            return
        }

        standardUserInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StandardUser.label', default: 'StandardUser'), standardUserInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
