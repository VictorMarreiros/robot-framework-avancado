*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${LOGIN_TITLE}                  Login - My Store
${LOGIN_CMP_EMAIL}              id=email_create
${LOGIN_BTN_SUBMITCREATE}       id=SubmitCreate
${LOGIN_PAGE_HEADING}           xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
${LOGIN_OPT_GENDER}             id=id_gender2
${LOGIN_FIELD_FIRSTNAME}        id=customer_firstname
${LOGIN_FIELD_LASTNAME}         id=customer_lastname
${LOGIN_FIELD_PASSWORD}         id=passwd
${LOGIN_FIELD_ADDRESS}          id=address1
${LOGIN_FIELD_CITY}             id=city
${LOGIN_SELECT_ID_STATE}        id=id_state
${LOGIN_FIELD_POSTCODE}         id=postcode
${LOGIN_FIELD_PHONE_MOB}        id=phone_mobile
${LOGIN_BTN_SUBMITACCOUNT}      submitAccount

*** Keywords ***
#### Ações
Informar um e-mail válido
    Wait Until Element Is Visible   ${LOGIN_CMP_EMAIL}
    ${EMAIL}                        Generate Random String
    Input Text                      ${LOGIN_CMP_EMAIL}    ${EMAIL}@testerobot.com

Clicar em "Create an account"
    Click Button    ${LOGIN_BTN_SUBMITCREATE}

Preencher os dados obrigatórios
    Wait Until Element Is Visible   ${LOGIN_PAGE_HEADING}
    Click Element                   ${LOGIN_OPT_GENDER}
    Input Text                      ${LOGIN_FIELD_FIRSTNAME}        May
    Input Text                      ${LOGIN_FIELD_LASTNAME}         Fernandes
    Input Text                      ${LOGIN_CMP_EMAIL}              ${EMAIL}@testerobot.com
    Input Text                      ${LOGIN_FIELD_PASSWORD}         123456
    Input Text                      ${LOGIN_FIELD_ADDRESS}          Rua Framework, Bairro Robot
    Input Text                      ${LOGIN_FIELD_CITY}             Floripa
    Set Focus To Element            ${LOGIN_SELECT_ID_STATE}
    ### No firefox ocorreu problema ao achar o listbox State, então coloquei um if para esperar
    ### pelo elemento quando for firefox
    Run Keyword If    '${BROWSER}'=='firefox'  Wait Until Element Is Visible   ${LOGIN_SELECT_ID_STATE}
    Select From List By Index       ${LOGIN_SELECT_ID_STATE}              9
    Input Text                      ${LOGIN_FIELD_POSTCODE}             12345
    Input Text                      ${LOGIN_FIELD_PHONE_MOB}          99988877

Submeter cadastro
    Click Button    ${LOGIN_BTN_SUBMITACCOUNT}


## Conferências
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p
    Element Text Should Be           xpath=//*[@id="center_column"]/p
    ...    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           xpath=//*[@id="header"]/div[2]//div[1]/a/span    May Fernandes
