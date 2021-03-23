package projetowkf


class UserController {

    def index() {
        // Aqui estamos recebendo todos usuarios cadastrados no sistema na variavel userList
        List userList = User.list()

        // Aqui estamos renderizando o index de user recuperando os valores de userList e atribuindo a variavel 'users'
        render(view: "/user/index", model: [users: userList])
    }

    def addUser() {

    User user = new User()
    user.name = "Novo usuario"
    user.profile = Profile.USER

    }

    def save() {



    }

}
