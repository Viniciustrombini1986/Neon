class HomePage

    def url
        visit 'https://www.neon.com.br/'  
    end
end

class PerguntasPage

    def acessarPerguntaNeon
        click_link 'Perguntas'
    end

    def selecionarPerguntas
        find("h4[class='questions__list-item-title']", text: 'Como faço para ter Neon+?').click
    end
end


class CadastroPage

    elementos = [ 
        :nome, :cpf, :email, :contato, :nascimento, :btnEnviar,
    ]

    attr_reader *elementos           

    def initialize
        @nome   =       "#mat-input-0"
        @cpf    =       "#mat-input-1"
        @email  =       "#mat-input-2"
        @contato    =   "#mat-input-3"
        @nascimento =   "#mat-input-4"
    end
    
    def abrirConta
        first("a[href='/cadastro']").click
    end
    
    def cadastroInvalido
        find(nome).set Faker::Movies::HarryPotter.character.gsub("'", "").lstrip 
        find(cpf).set "123456"
        find(email).set "#{Faker::Name.first_name}@mailinator.com"
        find(contato).set '11988501212'
        find(nascimento).set '21071985'
        find("div[class='mat-checkbox-inner-container']").click
        find("button[type='submit']").click
    end
end


