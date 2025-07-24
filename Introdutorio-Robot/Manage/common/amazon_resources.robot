*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Library          SeleniumLibrary

*** Variables ***
${URL}                        https://www.amazon.com.br/
${MENU_BOOKS}                 xpath=//a[text()='Livros']
${HEADER_BOOKS}               xpath=//*[@id="0"]/div/div
${TEXTO_HEADER_BOOKS}         xpath=//*[@id="0"]/div/div/h1/span/span
${PRODUTO}                    Xbox Series S
${CAMPO_PESQUISA}             xpath=//*[@id="twotabsearchtextbox"]
${BOTAO_PESQUISA}             xpath=//*[@id="nav-search-submit-button"]
${RESULTADO}                  xpath=//div[contains(@class, "s-main-slot")]//span[contains(@class, "a-text-normal")]
${BOTAO_ADICIONAR_CARRINHO}   id=add-to-cart-button
${BOTAO_IR_PARA_CARRINHO}     xpath=//a[contains(@data-csa-c-type,'button')]

*** Keywords ***
Abrir o Navegador
    [Documentation]  Abre o navegador.
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${MENU_BOOKS}    timeout=15s

Fechar o Navegador
    [Documentation]  Fecha o navegador.
    Close Browser

Acessar a home page do site amazon
    Go To    ${URL}
    Wait Until Element Is Visible    ${MENU_BOOKS}    timeout=15s

Entrar no menu de livros
    Click Element    ${MENU_BOOKS}
    Wait Until Element Is Visible    ${TEXTO_HEADER_BOOKS}    timeout=10s

Verificar se aparece o título "Loja de Livros"
    Wait Until Page Contains   Loja de Livros    timeout=10s
    Element Should Be Visible    ${TEXTO_HEADER_BOOKS}

Verificar se aparece a categoria "Lançamentos"
    Element Should Be Visible    xpath=//*[@id="sobe_d_b_ms_2_4"]/a/div/div/img

Digitar o nome de produto no search e pesquisar
    [Arguments]    ${produto}
    Input Text    ${CAMPO_PESQUISA}    ${produto}
    Click Element  ${BOTAO_PESQUISA}
    Wait Until Page Contains    ${produto}    timeout=10s

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible     xpath=//h2[contains(., '${PRODUTO}')]    timeout=10s

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    xpath=//h2[contains(., '${PRODUTO}')]
    Wait Until Element Is Visible     id=productTitle    timeout=10s
    Click Element    ${BOTAO_ADICIONAR_CARRINHO}
    Wait Until Element Is Visible    xpath=//div[contains(text(),'Adicionado ao carrinho')]    timeout=15s

Verificar se o produto "Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible    xpath=//div[contains(text(),'Adicionado ao carrinho')]    timeout=10s

#################################
###            BDD            ###
#################################

# GHERKIN - BDD - Cenário: Acesso ao Menu "Livros"
Dado que o navegador está aberto
    Abrir o Navegador
E que estou na home page da Amazon.com.br
    Acessar a home page do site amazon
Quando eu acesso o menu de livros
    Entrar no menu de livros
Então deve aparecer o título "Loja de Livros"
    Verificar se aparece o título "Loja de Livros"
E deve exibir a categoria "Lançamentos"
    Verificar se aparece a categoria "Lançamentos"

# GHERKIN - BDD - Cenário: Pesquisa de um produto
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site amazon
Quando eu pesquiso pelo produto "Xbox Series S"
    Digitar o nome de produto no search e pesquisar    Xbox Series S
Então o resultado da pesquisa deve listar o produto "Xbox Series S"
    Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"
