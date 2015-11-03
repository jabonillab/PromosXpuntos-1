package CLASSES

class Campaign extends Offer {
    String campaignName
    String description
    byte [] picture
    Date dueDate
    Date creationDate
    int point
    String pictureType

    static belongsTo = [
            customer : Customer
    ]

    static constraints = {
        campaignName(blank: false,unique: true,minSize: 5,maxSize: 30)
        description(blank: false, unique: true, minSize: 30)
        picture(nullable:true, maxSize: 3145728 /* 16K */)
        creationDate(blank: false)
        dueDate(blank: false, validator: {return it > creationDate})
        point(blank:false, min: 1)
        pictureType(nullable:true)
    }

    static mapping = {
        table('campaign')
    }
}
