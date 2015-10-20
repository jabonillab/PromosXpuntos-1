package CLASSES

class StandardUser extends User{
    String gender
    Date birthday
    String telephone
    def points = [:]

    static hasMany = [
            redeemedRewards : Reward,
            shopRecords : ShopRecord
    ]

    static constraints = {
        gender(inList: ['male', 'female'])
        telephone(size: 7..10)
    }

    static mapping = {
        table('standard_user')
    }
}



