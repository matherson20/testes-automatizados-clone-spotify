
#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | mathersonvieira20@gmail.com |
            | senha          | abc123                      |
            | senha_confirma | abc123                      |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"


        Exemplos:

            | email                       | senha  | senha_confirma | mensagem_saida                       |
            |                             | abc123 | abc123         | Oops! Informe seu email.             |
            | mathersonvieira20@gmail.com |        |                | Oops! Informe sua senha.             |
            | mathersonvieira20@gmail.com | abc123 | 321abc         | Oops! Senhas não são iguais.         |
            |                             |        |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email

        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"