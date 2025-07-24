*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Resource         E:\\Repository - TST\\Robot-Curso\\Introdutorio-Robot\\Manage\\common\\amazon_resources.robot

Library          SeleniumLibrary


*** Test Cases ***
Caso de Teste - Acesso ao Menu "Livros"
    [Documentation]    Esse teste verifica o menu de livros do site amazon
    ...                e também valores smoke
    [Tags]             menus    categorias
    Abrir o Navegador
    Acessar a home page do site amazon
    Entrar no menu de livros
    Verificar se aparece o título "Loja de Livros"
    Verificar se aparece a categoria "Lançamentos"

Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica e busca um produto
    [Tags]             busca_produtos    lista_buscas
    Acessar a home page do site amazon
    Digitar o nome de produto no search e pesquisar    Xbox Series S
