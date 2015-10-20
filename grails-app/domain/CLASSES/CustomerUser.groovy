package CLASSES

class CustomerUser extends Customer {
    String office

    static belongsTo = [
            customer : Customer
    ]

    static constraints = {
        office(blank: false)
    }

    static mapping = {
        table('customer_user')
    }
}
