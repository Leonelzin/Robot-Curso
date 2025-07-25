*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Resource         E:\\Repository - TST\\Robot-Curso\\Introdutorio-Robot\\Manage\\common\\amazon_resources.robot

Library          SeleniumLibrary


*** Test Cases ***
Cenário: Acesso ao Menu "Livros"
    [Documentation]    Esse teste verifica o menu de livros do site amazon
    ...                e também valores smoke
    [Tags]             GHERKIN    BDD
    Dado que o navegador está aberto
    E que estou na home page da Amazon.com.br
    Quando eu acesso o menu de livros
    Então deve aparecer o título "Loja de Livros"
    E deve exibir a categoria "Lançamentos"

Cenário: Pesquisa de um produto
    [Documentation]  Esse teste verifica e busca um produto.
    [Tags]           GHERKIN    BDD
    Dado que estou na home page da Amazon.com.br
    Quando eu pesquiso pelo produto "Xbox Series S"
    Então o resultado da pesquisa deve listar o produto "Xbox Series S"
