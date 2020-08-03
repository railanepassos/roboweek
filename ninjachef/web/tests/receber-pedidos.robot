***Settings***
Documentation       Suite dos testes de receber pedidos

Library             RequestsLibrary

Resource            ../resources/base.robot

Test Setup          Open Session        # Antes de cada TestCase
Test Teardown       Close Session       # Após cada TestCase

***Test Cases***
Receber novo pedido
    Dado que "railane@teste.com" é a minha conta de cozinheiro
    E "fernando@bol.com.br" é o email do meu cliente
    E que "Macarronada" está cadastrado no meu dashboard
    Quando o cliente solicita o preparo desse prato
    Então devo receber uma notificação de pedidios desse produto
    E posso aceitar ou rejeitar o pedido

**Keywords***
Dado que "${email_cozinheiro}" é a minha conta de cozinheiro
## Fazendo login via API
    Set Test Variable       ${email_cozinheiro}

    &{headers}=         Create Dictionary       Content-Type=application/json
    &{payload}=         Create Dictionary       email=${email_cozinheiro}

    Create Session          api             http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=            Post Request        api     /sessions       data=${payload}     headers=${headers}
    Status Should Be        200             ${resp}

    ${token_cozinheiro}         Convert To String           ${resp.json()['_id']}
    Set Test Variables          ${token_cozinheiro}

E "${email_cliente}" é o email do meu cliente
    Set Test Variable       ${email_cliente}   

E que "${produto}" está cadastrado no meu dashboard
    Set Test Variable       ${produto}

    &{payload}=         Create Dictionary       name=${produto}         plate=Tipo          price=20.00

    ${image_file}=          Get Binary file       ${EXECDIR}/resources/images/produto.jpg
    ${files}=           Create Dictionary           thumbnail=${image_file}

    ${headers}=         Create Dictionary       user_id=${token_cozinheiro}

    Create Session          api             http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=            Post Request        api     /products       files=${files}     data=${payload}      headers=${headers}
    Status Should Be        200             ${resp}

Quando o cliente solicita o preparo desse prato

Então devo receber uma notificação de pedidios desse produto

E posso aceitar ou rejeitar o pedido