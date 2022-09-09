*** Settings ***
Resource    ../resources/base.robot

*** Keywords ***

Dado que o usuário esteja na Home
    Open Browser    ${url}    Chrome
    Wait Until Element Is Visible    ${botao_singin}    15

E clico no botão Sing In
    Click Element    ${botao_singin}

Quando coloco um e-mail válido
    Wait Until Element Is Visible    id:SubmitCreate    15
    ${{input_email}}    FakerLibrary.Email
    Input Text    id:email_create    ${{input_email}}
    Click Element    id:SubmitCreate

E preencho todas as informações de cadastro de forma válida 
    Wait Until Element Is Visible    id:customer_firstname    15 
    ${(input_firstname)}    FakerLibrary.Name
    Input Text    id:customer_firstname    ${(input_firstname)}
    ${(input_lastname)}    FakerLibrary.Last Name
    Input Text    id:customer_lastname    ${(input_lastname)}
    Click Element    id:days
    Click Element    css:option[value="3"]
    Click Element    id:months
    Click Element    xpath://option[contains(text( ),"March")]
    Click Element    id:years
    Click Element    xpath://option[contains(text( ),"1998")]
    ${(input_adress)}    FakerLibrary.Address
    Input Text    id:address1    ${(input_adress)}
    Input Text    id:city   Salvador
    Click Element    id:id_state
    Click Element    xpath: //option[contains(text( ),"Florida")]
    ${(input_zipcode)}    FakerLibrary.Zipcode
    Input Text    id:postcode    ${(input_zipcode)}
    Click Element    id:id_country
    Click Element    xpath: //option[contains(text( ),"United States")]
    Input Text    id:phone_mobile    99999999999 
    Input Text    id:passwd    123456
    Click Element    id:submitAccount
    
Então devo visualizar a área logada
    Wait Until Element Is Visible     xpath://span[contains(text( ),"My account")]    15