package CLASSES


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StandardUserController {

    def user
    def user1

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        if (session.StandardUserSession) {
            redirect(controller: 'index', action: 'profile', params: [nickname: "${session.StandardUserSession}"])
        }
    }

    def show(StandardUser standardUserInstance) {
        respond standardUserInstance
    }

    def create() {
        respond new StandardUser(params)
    }

    def registrar(){
        user = StandardUser.findByEmail(params.email)
        user1 = StandardUser.findByNickname(params.nickname)

        if(user){
            //El usuario ya existe
            flash.message = "userExist'"
            redirect(controller:'user',action:'logUp')
        }
        else if(user1){
            //El usuario ya existe
            flash.message = "mailExist"
            redirect(controller:'user',action:'logUp')
        }
        else {
            //Nuevo Usario*/
            def parameters =  [   name      :   params.name
                                  , lastName  :   params.lastName
                                  , email     :   params.email
                                  , nickname  :   params.nickname
                                  , password  :   params.password
                                  , gender    :   params.gender
                                  , telephone :   params.telephone]

            def newStandardUser = new StandardUser(parameters)
            flash.message = "Usuario creado"
        }
        redirect(controller: 'standardUser', action: 'show')
        return
    }

    @Transactional
    def save(StandardUser standardUserInstance) {
        if (standardUserInstance == null) {
            notFound()
            return
        }

        if (standardUserInstance.hasErrors()) {
            respond standardUserInstance.errors, view: 'create-error'
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
