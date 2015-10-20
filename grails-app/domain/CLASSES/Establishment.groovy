package CLASSES

class Establishment {
    String name
    String address
    String telephoneNumber

    static hasMany = [
            shopRecords : ShopRecord
    ]

    static belongsTo = [
            customer : Customer
    ]

    static constraints = {
        name(size: 5..50)
        address(blank: false)
        telephoneNumber(size: 7..20)
    }
}
