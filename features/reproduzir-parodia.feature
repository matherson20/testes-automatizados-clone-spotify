#language: pt

Funcionalidade: Reproduzir paródia
    sendo um usuário do sistema
    quero reproduiz músicas no player do parodify
    para que eu possa ouvir  paródias das minhas bandas favoritas

Contexto: Login
    * Login com "mathersonvieira20@gmail.com" e "abc123"

    Cenario: Ouvir paródia

        Dado eu gosto de "Rock"
        Quando toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia deve ficar em modo de execução