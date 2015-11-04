package CLASSES


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.util.Date


@Transactional(readOnly = true)
class CampaignController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        if (session.StandardUserSession) {
            redirect(controller: 'index', action: 'profile', params: [nickname: "${session.StandardUserSession}"])
        }
    }

    def show(Campaign campaignInstance) {
        respond campaignInstance
    }

    def create() {
        respond new Campaign(params)
    }


    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']
    def register() {

        def campaign = Campaign.findByCampaignName(params.campaignName)

        if (campaign) {
            //El usuario ya existe
            flash.message = "campaignNameExist'"
            redirect(controller: 'campaign', action: 'logUp')
        }  else {
            //Nuevo Usario*/
            def pictureFile = request.getFile('picture')
            if (!okcontents.contains(pictureFile.getContentType()) && pictureFile.bytes != []) {
                flash.message = "picture"
                render(view:'logUp', model:[campaign:campaign,formats:okcontents])
                return
            }
            def parameters = [campaignName: params.campaignName
                              , description    : params.description
                              , creationDateCampaign    : params.date(creationDateCampaign,'MM/dd/yyyy')
                              , dueDateCampaign  :  params.date(dueDateCampaign,'MM/dd/yyyy')
                              , point   : params.point
                              , picture : pictureFile.bytes
                              , pictureType : pictureFile.contentType]


            def newCampaign = new Campaign(parameters)

            if(!newCampaign.save(flush: true)){
                render(view: 'logUp',model: [newCampaign:newCampaign])
                return
            }

            campaign = Campaign.findByCampaignName(params.campaignName)
            session["campaignSession"]=campaign.campaignName
            redirect(controller: 'campaign', action: 'save',params: [campaignName:"${campaign.campaignName}"])
            return
        }
    }


    @Transactional
    def save(Campaign campaignInstance) {
        if (campaignInstance == null) {
            notFound()
            return
        }

        if (campaignInstance.hasErrors()) {
            respond campaignInstance.errors, view: 'create'
            return
        }

        campaignInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect campaignInstance
            }
            '*' { respond campaignInstance, [status: CREATED] }
        }
    }

    def edit(Campaign campaignInstance) {
        respond campaignInstance
    }

    @Transactional
    def update(Campaign campaignInstance) {
        if (campaignInstance == null) {
            notFound()
            return
        }

        if (campaignInstance.hasErrors()) {
            respond campaignInstance.errors, view: 'edit'
            return
        }

        campaignInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect campaignInstance
            }
            '*' { respond campaignInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Campaign campaignInstance) {

        if (campaignInstance == null) {
            notFound()
            return
        }

        campaignInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'campaign.label', default: 'Campaign'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def logUp(){
    }

   def profile() {

        def campaignName = params.campaignName
        if (session.campaignSession == campaignName) {

        render(view: 'profile', model: [campaign: Campaign.findByCampaignName(session.campaignSession)])
        } else {
            render(view: 'profile', model: [campaign: Campaign.findByCampaignName(campaignName)])
        }

    }


}
