package CLASSES

class StandardUser extends User{
    String gender
    Date birthday
    String telephone
    def points = [:]

    static constraints = {
        gender(inList: ['male', 'female'])
        telephone(size: 7..10)
    }
}



