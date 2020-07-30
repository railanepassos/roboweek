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


