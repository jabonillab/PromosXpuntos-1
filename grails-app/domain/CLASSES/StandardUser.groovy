package CLASSES

class StandardUser extends User{
    String gender
    Date birthday
    int points
    String telephone

    static constraints = {
        gender(inList: ['male', 'female'])
        telephone(size: 7..10)
    }
}
