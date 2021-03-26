
Dado('quando acesso a página de login') do
   goto_login
  end
  
Quando('submeto os dados: {string} e {string}') do |email, password|
   login_with(email, password)
  end

  Então('devo ver a mensagem de erro: {string}') do |expect_message|

    expect(login_alert).to eql expect_message
    
  end
  