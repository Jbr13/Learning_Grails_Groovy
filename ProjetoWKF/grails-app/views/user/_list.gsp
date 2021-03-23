<g:if test="${user?.size() > 0}">
<table>
    <tr>
        <th>Nome</th>
        <th>Nome de usuario</th>
        <th>Email</th>
        <th>Perfil</th>
    </tr>
    <g:each var="user" in="${user}">
        <tr>
            <td>${user.name}</td>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>${user.profile.profileName}</td>
            <td>
                <a href="#">Alterar</a>
                <a href="#">Excluir</a>
            </td>
        </tr>

    </g:each>
</table>
</g:if>
<g:else>
    <h2>Nao existem usuarios cadastrados no sistema</h2>
</g:else>