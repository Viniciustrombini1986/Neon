require 'selenium-webdriver'
include Capybara::DSL

Before do
    Capybara.page.driver.browser.manage.window.maximize
    @acesso = HomePage.new
    @perguntas = PerguntasPage.new
    @cadastro = CadastroPage.new
end
  
After do
    Capybara.reset_sessions!
end

#captura evidencia
After do |scenario|
    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    screenshot = "logs/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
end