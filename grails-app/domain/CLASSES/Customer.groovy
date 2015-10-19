package CLASSES

class Customer {
    String name
    String contactNumber
    Object logo
    String description
    static constraints = {
        name(size: 5..50)
        contactNumber(size: 7..20)
        description(maxSize: 200, nullable: true)
        logo(nullable: true)
    }
}
