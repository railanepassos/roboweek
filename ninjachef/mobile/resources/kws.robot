***Settings***
Documentation        Aqui teremos todas as palavras chaves de automação dos comportamentos.

***Keywords***
Dado que desejo comer "${prato}"
    Set Test Variable   ${prato}
    
Quando submeto o meu email "${email}"
    Wait Until Page Contains        Buscar Prato
    Input Text          accessibility_id=emailInput     ${email}
    Input Text          accessibility_id=plateInput     ${prato}
    Click Text          Buscar Prato

Então devo ser ver os pratos do tipo
    Wait Until Page Contains        Fome de ${prato}