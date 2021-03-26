#language: pt


Funcionalidade: Pesquisa
    sendo um jogador de lol
    quero quero saber meus dados estatísticos
    para poder analisar meu desempenho

    Cenario: Pesquisa por usuário

        Dado quando acesso a página do opgg
        Quando submeto os dados pesquiso pelo meu nick: "matherfla"
        Então devo ser redirecionado para a página das estatísticas do mesmo e exibir o seguinte css: "span[class="Name"]"