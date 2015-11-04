package CLASSES

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends Specification {

    def setup() {
        mockForConstraintsTests(User)
    }

    def cleanup() {
    }
    @Unroll ("test User attribute name: #name, field: #field, valid: #valid ")
    def "Testing Domain Class User - name"() {
        when:
        def t_User_name = new User(name: name, lastName: 'pruebalastName', email: 'jorge@hotmail.com', nickname: 'testingnick', password: 'okokokok', picture: 'noproblemmm')
        t_User_name.validate()

        then:
        t_User_name.errors.hasFieldErrors("name") == false

        where:
        name | valid | field
        null | false | 'null'
        'ok' | true | 'algo'
    }
    @Unroll ("test User attribute lastName: #lastName, field: #field, valid: #valid ")
    def "Testing Domain Class User - lastName"() {
        when:
        def t_User_lastName = new User(name: 'TESTNAME', lastName: lastName, email: 'jorge@hotmail.com', nickname: 'testingnick', password: 'okokokok', picture: 'noproblemmm')
        t_User_lastName.validate()

        then:
        t_User_lastName.errors.hasFieldErrors("lastName") == false

        where:
        lastName | valid | field
        null | false | 'null'
        'ok' | true  | 'algo'
    }
    @Unroll ("test User attribute email: #email, field: #field, valid: #valid ")
    def "Testing Domain Class User - email"() {
        when:
        def t_User_email = new User(name: 'TESTNAME', lastName: 'pruebalastName', email: email, nickname: 'testingnick', password: 'okokokok', picture: 'noproblemmm')
        t_User_email.validate()

        then:
        t_User_email.errors.hasFieldErrors("email") == false

        where:
        email             | valid | field
        null              | false | 'null'
        'jorge.com'       | false | 'sin @'
        'jorge@gmail'     | false | 'sin dominio'
        'nada'            | false | 'sin @ y . '
        'jorge@gmail.com' | true  | 'completo'
    }
    @Unroll ("test User attribute nickname: #nickname, field: #field, valid: #valid ")
    def "Testing Domain Class User - nickname"() {
        when:
        def t_User_nickname = new User(name: 'TESTNAME', lastName: 'pruebalastName', email: 'jorge@hotmail.com', nickname: nickname, password: 'okokokok', picture: 'noproblemmm')
        t_User_nickname.validate()

        then:
        t_User_nickname.errors.hasFieldErrors("nickname") == false

        where:
        nickname       | valid | field
        null           | false | 'null'
        'ok'           | false | 'minRange'
        'aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa' | false | 'maxRange'
        'buennickname' | true  | 'Range'
    }

    @Unroll ("test User attribute password: #password, field: #field, valid: #valid ")
    def "Testing Domain Class User - password"() {
        when:
        def t_User_password = new User(name: 'TESTNAME', lastName: 'pruebalastName', email: 'jorge@hotmail.com', nickname: 'testingnick', password: password, picture: 'noproblemmm')
        t_User_password.validate()

        then:
        t_User_password.errors.hasFieldErrors("password") == false

        where:
        password      | valid | field
        null          | false | 'null'
        'okok'        | false | 'minRange'
        'aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa' | false | 'maxRange'
        'buenacontra' | true  | 'Range'
    }

    @Unroll ("test User attribute picture: #picture, field: #field, valid: #valid ")
    def "Testing Domain Class User - picture"(){
        when:
        def t_User_picture = new User(name: 'TESTNAME',lastName: 'pruebalastName',email: 'jorge@hotmail.com',nickname: 'testingnick',password: 'okokokok',picture: picture)
        t_User_picture.validate()

        then:
        t_User_picture.errors.hasFieldErrors("picture") == false

        where:
        picture | valid | field
        null | false | 'null'
        'ok'|true|'algo'


    }
}
