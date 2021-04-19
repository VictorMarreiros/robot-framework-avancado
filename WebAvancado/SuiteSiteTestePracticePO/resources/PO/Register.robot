*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${REGISTER_TITLE}                   xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
${REGISTER_OPT_GENDER}              id=id_gender2
${REGISTER_FIELD_FIRSTNAME}         id=customer_firstname
${REGISTER_FIELD_LASTNAME}          id=customer_lastname
${REGISTER_FIELD_EMAIL}             id=email
${REGISTER_FIELD_PASSWORD}          id=passwd
${REGISTER_FIELD_ADDRESS}           id=address1
${REGISTER_FIELD_CITY}              id=city
${REGISTER_SELECT_ID_STATE}         id=id_state
${REGISTER_FIELD_POSTCODE}          id=postcode
${REGISTER_FIELD_PHONE_MOB}         id=phone_mobile
${REGISTER_BTN_SUBMITACCOUNT}       submitAccount


*** Keywords ***
#### Ações
Preencher os dados obrigatórios
    Wait Until Element Is Visible   ${REGISTER_TITLE}
    Click Element                   ${REGISTER_OPT_GENDER}
    Input Text                      ${REGISTER_FIELD_FIRSTNAME}        May
    Input Text                      ${REGISTER_FIELD_LASTNAME}         Fernandes
    Input Text                      ${REGISTER_FIELD_EMAIL}              ${EMAIL}@testerobot.com
    Input Text                      ${REGISTER_FIELD_PASSWORD}         123456
    Input Text                      ${REGISTER_FIELD_ADDRESS}          Rua Framework, Bairro Robot
    Input Text                      ${REGISTER_FIELD_CITY}             Floripa
    Set Focus To Element            ${REGISTER_SELECT_ID_STATE}
    ### No firefox ocorreu problema ao achar o listbox State, então coloquei um if para esperar
    ### pelo elemento quando for firefox
    Run Keyword If    '${BROWSER}'=='firefox'  Wait Until Element Is Visible   ${REGISTER_SELECT_ID_STATE}
    Select From List By Index       ${REGISTER_SELECT_ID_STATE}              9
    Input Text                      ${REGISTER_FIELD_POSTCODE}             12345
    Input Text                      ${REGISTER_FIELD_PHONE_MOB}          99988877

Submeter cadastro
    Click Button    ${REGISTER_BTN_SUBMITACCOUNT}

