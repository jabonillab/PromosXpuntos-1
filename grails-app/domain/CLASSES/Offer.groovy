package CLASSES

class Offer {
    Date creationDate
    Date dueDate
    Product product

    static constraints = {
        dueDate(validator: {return it > creationDate})
    }
}
