package projetowkf

class User {

    String username
    String name
    String password
    String email

    // Aqui temos um relacionamento de 1 p n
    Profile profile

    static constraints = {

        /*
        Lembrar que essas restriçoes serao aplicadas na hora de salvar o objeto,
        entao no caso da senha, se for necessario criptografar a mesma tera de ser antes de validar
        por conta do "size" pois ao cirptografar sera maior que 10 caracteres.
        */
        username nullable: false, blank: false
        name nullable: false, blank: false
        password nullable: false, blank: false
        profile nullable: false, blank: false
        email nullable: true, blank: true, email: true, unique: true
    }

}
