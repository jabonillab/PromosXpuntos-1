package CLASSES

class Establishment {
    String name
    String address
    String telephoneNumber
    String nit
    static constraints = {
        name(size: 5..50)
        address(blank: false)
        telephoneNumber(size: 7..20)
        nit(size: 5..20)
    }
}
