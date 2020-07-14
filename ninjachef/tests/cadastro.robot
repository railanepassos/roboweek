***Settings***
Documentation       Suite dos testes de cadastro

Resource            ../resourses/base.robot

Test Setup          Open Session        # Antes de cada TestCase
Test Teardown       Close Session       # Ap[os cada TestCase

***Test Cases***
Cadastro simples
    Dado que acesso a página principal
	Quando submeto o meu email "joao@gmail.com"
    Então devo ser autenticado



