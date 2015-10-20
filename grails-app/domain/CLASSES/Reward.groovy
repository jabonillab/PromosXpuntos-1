package CLASSES

class Reward extends Offer {
    int pointsRequired

    static hasMany = [
            requesterUsers : StandardUser
    ]

    static belongsTo = StandardUser

    static constraints = {
        pointsRequired(min: 0)
    }

    static mapping = {
        table('reward')
    }
}