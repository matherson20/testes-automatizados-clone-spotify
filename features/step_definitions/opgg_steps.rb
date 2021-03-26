Dado('quando acesso a página do opgg') do
    visit "https://br.op.gg/l=pt"
  end
  
  Quando('submeto os dados pesquiso pelo meu nick: {string}') do |nick|
    find("input[name*= 'userName']").set nick
    find("button[class*= summoner-search-form__button]").click
    sleep 5
  end
  
  Então('devo ser redirecionado para a página das estatísticas do mesmo e exibir o seguinte css: "span[class={string}]"') do |string|
    
  end
  

