***Settings***
Documentation       Testes do login no NinjaChef Mobile

Resource            ../resourses/base.robot

Test Setup          Open Session
Test Teardown       Close Session

***Test Cases***
Acessar o cardapio
    Dado que desejo comer "Massas"
    Quando submeto o meu email "papito@qaninja.com.br"
    Então devo ser ver os pratos do tipo escolhido