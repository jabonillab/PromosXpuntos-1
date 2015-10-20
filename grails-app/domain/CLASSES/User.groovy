package CLASSES

class User {
    String name
    String lastName
    String email
    String nickname
    String password
    Object picture

    static constraints = {
        name(blank: false)
        lastName(blank: false)
        email(email: true)
        nickname(size: 5..20)
        password(size: 7..20, display: false)
        picture(nullable: true)
    }
}
