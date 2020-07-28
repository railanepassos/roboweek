***Settings***
Documentation       Suite dos testes de cadastro

Resource            ../resourses/base.robot

Test Setup          Open Session        # Antes de cada TestCase
Test Teardown       Close Session       # Após cada TestCase

***Test Cases***
Cadastro simples
    Dado que acesso a página principal
	Quando submeto o meu email "joao@gmail.com"
    Então devo ser autenticado

Email incorreto
    Dado que acesso a página principal
    Quando submeto o meu email "joao&gmail.com"
    Então devo ver a mensagem "Oops. Informe um email válido!"

Email não informado
    Dado que acesso a página principal
    Quando submeto o meu email "${EMPTY}"
    Então devo ver a mensagem "Oops. Informe um email válido!"