***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinha-los para outras pessoas

Resource            ../resourses/base.robot

Test Setup          Open Session        # Antes de cada TestCase
Test Teardown       Close Session       # Após cada TestCase

***Variables***
## Objeto do tipo dicionário.
&{lasanha}=          nome=Lasanha de Carne       tipo=Massas     preco=15.00

****Test Cases***
Novo prato
    Dado que "${lasanha}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard