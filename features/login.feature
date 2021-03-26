#language: pt

Funcionalidade: Login
    sendo um usuário novo no sistema
    quero acessar o sistema com meu email e senha
    para poder escutar minhas músicas

    Cenario: Login de usuário

        Dado quando acesso a página de login
        Quando submeto os dados: "mathersonvieira20@hotmail.com" e "abc123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Login

        Dado quando acesso a página de login
        Quando submeto os dados: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                         | senha  |
            |                               | 123abc |
            | mathersonvieira20@hotmail.com |        |
            |                               |        |
            | mathersonviira20@hotmail.com | abc123 |
            | mathersonvieira20@hotmail.com | ab123  |







