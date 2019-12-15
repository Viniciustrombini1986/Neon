Dado("que o usuário esteja na home page da Neon") do
    @acesso.url
end

Quando("o usuário clicar no menu Perguntas") do
    @perguntas.acessarPerguntaNeon
end

Quando("acessar a pergunta Como faço para ter Neon+?") do
    @perguntas.selecionarPerguntas
end

Então("o sistema informa que será após ativar a conta") do
    expect(page).to have_content 'Após ativar a conta'
end

Quando("usuário clicar no botão para abrir a conta") do
    @cadastro.abrirConta
end

Quando("realizar seu cadastro com um CPF inválido") do
    @cadastro.cadastroInvalido
end

Então("o sistema deve exibir a mensagem informando o cliente") do
    expect(page).to have_content 'Ops! CPF inválido. Tente de novo.'
end