package CLASSES


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerUser.list(params), model: [customerUserInstanceCount: CustomerUser.count()]
    }

    def show(CustomerUser customerUserInstance) {
        respond customerUserInstance
    }

    def create() {
        respond new CustomerUser(params)
    }

    @Transactional
    def save(CustomerUser customerUserInstance) {
        if (customerUserInstance == null) {
            notFound()
            return
        }

        if (customerUserInstance.hasErrors()) {
            respond customerUserInstance.errors, view: 'create'
            return
        }

        customerUserInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerUser.label', default: 'CustomerUser'), customerUserInstance.id])
                redirect customerUserInstance
            }
            '*' { respond customerUserInstance, [status: CREATED] }
        }
    }

    def edit(CustomerUser customerUserInstance) {
        respond customerUserInstance
    }

    @Transactional
    def update(CustomerUser customerUserInstance) {
        if (customerUserInstance == null) {
            notFound()
            return
        }

        if (customerUserInstance.hasErrors()) {
            respond customerUserInstance.errors, view: 'edit'
            return
        }

        customerUserInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerUser.label', default: 'CustomerUser'), customerUserInstance.id])
                redirect customerUserInstance
            }
            '*' { respond customerUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerUser customerUserInstance) {

        if (customerUserInstance == null) {
            notFound()
            return
        }

        customerUserInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerUser.label', default: 'CustomerUser'), customerUserInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerUser.label', default: 'CustomerUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
