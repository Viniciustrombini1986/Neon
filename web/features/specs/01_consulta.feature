#language: pt

    Funcionalidade: Consultar Páginas do Site Neon
        Eu como usuário, desejo realizar algumas consultas no 
        site do banco Neon

Contexto: Acessar o site do Banco Neon
    Dado que o usuário esteja na home page da Neon

@resposta
Cenário: Verificar uma resposta na Página de Perguntas
    Quando o usuário clicar no menu Perguntas
        E acessar a pergunta Como faço para ter Neon+?
    Então o sistema informa que será após ativar a conta

@cadastro
Cenário: Abrir uma Conta com Usuário Inválido
    Quando usuário clicar no botão para abrir a conta
        E realizar seu cadastro com um CPF inválido
    Então o sistema deve exibir a mensagem informando o cliente