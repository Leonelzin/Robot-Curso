*** Settings ***
Documentation    Primeiro teste com LISTA no Robotframework
Library    String


*** Variables ***
&{DIASMESES}     Janeiro=31 dias    
...            Fevereiro=28 ou 29 dias (29 em anos bissextos)    
...            Março=31 dias    
...            Abril=30 dias
...            Maio=31 dias
...            Junho=30 dias
...            Julho=31 dias
...            Agosto=31 dias
...            Setembro=30 dias
...            Outubro=31 dias
...            Novembro=30 dias
...            Dezembro=31 dias


*** Keywords ***
Imprimindo os Meses com quantidade de dias de cada mês na Tela
    Log To Console    '  '
    Log To Console    Janeiro: ${DIASMESES.Janeiro}
    Log To Console    Fevereiro: ${DIASMESES.Fevereiro}
    Log To Console    Março: ${DIASMESES.Março}
    Log To Console    Maio: ${DIASMESES.Maio}
    Log To Console    Junho: ${DIASMESES.Junho}
    Log To Console    Julho: ${DIASMESES.Julho}
    Log To Console    Agosto: ${DIASMESES.Agosto}
    Log To Console    Setembro: ${DIASMESES.Setembro}
    Log To Console    Outubro: ${DIASMESES.Outubro}
    Log To Console    Novembro: ${DIASMESES.Novembro}
    Log To Console    Dezembro: ${DIASMESES.Dezembro}


*** Test Cases ***
CT02 - Teste com Dicionario
    Imprimindo os Meses com quantidade de dias de cada mês na Tela
