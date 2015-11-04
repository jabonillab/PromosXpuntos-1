package CLASSES

import java.util.Date

class Campaign extends Offer {
    String campaignName
    String description
    byte [] picture
    Date dueDateCampaign
    Date creationDateCampaign
    int point
    String pictureType

    static belongsTo = [
            customer : Customer
    ]

    static constraints = {

    }

    static mapping = {
        table('campaign')
    }
}
