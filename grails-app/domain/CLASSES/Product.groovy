package CLASSES

class Product {
    String name
    String description

    static hasMany = [
            offers : Offer
    ]

    static constraints = {
        name(blank: false)
        description(maxSize: 200, nullable: true)
    }
}
