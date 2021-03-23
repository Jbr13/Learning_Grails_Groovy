<div id="divMensagem"></div>

%{-- Aqui estamos nomeando nosso formulario, dizendo que quando ele for salvo, chame na controller user o metodo save() e
que apos isso atualize nossa divMensagem com a resposta desse salvamento--}%
<g:form name="userForm" controller= "user" action="save" method="POST">

    Nome de usuário: <input type="text" name="usuername" value="" required/><br/>
    Nome: <input type="text" name="nome" value="" required/><br/>
    Senha: <input type="password" name="password" value="" required/><br/>
    Email: <input type="email" name="email" value=""/><br/>
    Perfil: <g:select name="selectProfile" from="${projetowkf.Profile.findAll()}"></g:select>

    <input type="submit" name="btnSave" value="Save">
    <input type="button" name="btnCancel" value="Cancel">

</g:form>