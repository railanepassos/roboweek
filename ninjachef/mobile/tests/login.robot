***Settings***
Documentation       Testes do login no NinjaChef Mobile

Resource            ../resources/base.robot

Test Setup          Open Session
Test Teardown       Close Session

***Test Cases***
## Descrever comportamento de forma que seja de facil compreenção
Acessar o cardapio
    Dado que desejo comer "Massas"
    Quando submeto o meu email "papito@qaninja.com.br"
    Então devo ser ver os pratos do tipo

***Keywords***
Dado que desejo comer "${prato}"
    Set Test Variable   ${prato}
    
Quando submeto o meu email "$email"
    Input Text          accessibility_id=emailInput     ${email}
    Input Text          accessibility_id=plateInput     ${prato}
    Click Text          Buscar Prato

Então devo ser ver os pratos do tipo
    Wait Until Page Contains        Fome de ${prato}

