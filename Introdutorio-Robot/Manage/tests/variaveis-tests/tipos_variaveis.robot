*** Settings ***
Documentation   Exemplo de tipos de variáveis: SIMPLES, LISTAS e DICIONÁRIOS
*** Variables ***
#Simples
${SIMPLES}   Vamos ver os tipos de variáveis no robot!

#Tipo Lista (arrays) - separar itens com espaço duplo
@{FRUTAS}    morango   banana   maça   uva   abacaxi

#Tipo Dicionário (chave=valor) - separar cada chave=valor com espaço duplo
&{PESSOA}    nome=May Fernandes   email=mayfernandes@exemplo.com.br   idade=28   sexo=feminino

#Meses do Ano (Lista)
@{MESES}     Janeiro  Fevereiro    Março    Abril    Maio    Junho     Julho    Agosto    Setembro    Outubro    Novembro    Dezembro


*** Keywords ***
Uma keyword qualquer 01
    # Lendo um valor Simples
    Log    ${SIMPLES}

    # Lendo um item de uma Lista
    Log    Essa tem que ser maça: ${FRUTAS[2]} e essa tem que ser morango: ${FRUTAS[0]}

    # Lendo chaves de um Dicionário
    Log    Nome: ${PESSOA.nome} e email: ${PESSOA.email}

Uma keyword qualquer 02
    #Lendo uma lista de meses
    Log To Console   Tem que ser o mês de Maio: ${MESES[4]}


*** Test Cases ***
Caso de teste de exemplo 01
    Uma keyword qualquer 01

Meses do ano
    Comment    
    Uma keyword qualquer 02
    Log To Console   Tem que ser o mês de Junho: ${MESES[5]}
