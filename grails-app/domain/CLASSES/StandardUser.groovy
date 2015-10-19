package CLASSES

class StandardUser extends User{
    String gender
    Date birthday
    String telephone
    static hasMany = [redeemblepoints : RedeemablePoints]

    static constraints = {
        gender(inList: ['male', 'female'])
        telephone(size: 7..10)
    }
}



