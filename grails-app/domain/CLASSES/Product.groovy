package CLASSES

class Product {
    String name
    String description
    int idProduct
    static constraints = {
        name(blank: false)
        description(maxSize: 200, nullable: true)
    }
}
