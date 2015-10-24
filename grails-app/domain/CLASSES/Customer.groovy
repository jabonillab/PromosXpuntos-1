package CLASSES

class Customer {
    String identification
    String name
    String contractNumber
    Object logo
    String description

    static hasMany = [
            users : CustomerUser,
            rewards : Reward,
            campaigns : Campaign,
            establishment : Establishment
    ]

    static constraints = {
        identification(blank: false)
        name(size: 5..50)
        contractNumber(size: 7..20)
        description(maxSize: 200, nullable: true)
        logo(nullable: true)
    }
}
