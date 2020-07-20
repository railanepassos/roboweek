***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação dos comportamentos.

***Keywords***
## Acesso e autenticação
Dado que acesso a página principal
    Go To           http://ninjachef-qaninja-io.umbler.net/

Quando submeto o meu email "${email}"
    Input Text      id:email    ${email}
    Click Element   css:button[type=submit]

Então devo ser autenticado
    Wait Until Page Contains Element     class:dashboard

Então devo ver a mensagem "${expect_message}"
    Wait Until Element Contains     class:alert     ${expect_message}

# Cadastro de Pratos
Dado que "${produto}" é um dos meus pratos
    # Descrever a massa de teste
    Set Test Variable       ${produto}

Quando faço o cadastro desse item
    Wait Until Element Is Visible       class:btn-add       5
    Click Element                       class:btn-add

    Choose File             css:input[id=thumbnail]     ${EXECDIR}\\resourses\\images\\${produto['img']}

    Input Text              id:name         ${produto['nome']}
    Input Text              id:plate        ${produto['tipo']}
    Input Text              id:price        ${produto['preco']}
    Sleep                   10
    Click Element           class:btn-cadastrar

Então devo ver este prato no meu dashboard
    Wait Until Element Contains     class:product-list      ${produto['nome']}