<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User</title>
    <script>

        $(document).ready(function () {
            $('.btnAdd').on('click', function (event) {
                $.ajax({
                    url: "user/_form.gsp",
                    method: "POST",
                    data: ${null},
                    dataType: "text"
                })
            })
        })

    </script>
</head>
<body>

<div id="divList">

    %{-- Renderizando o template list criando a variavel users que recebera do template list os usuarios recuperados--}%
    <g:render template="list" model="users: user"></g:render>

</div>

    <g:link id="btnAdd" controller="user">Adicionar</g:link>

    <div id="divForm">



    </div>

</body>
</html>
