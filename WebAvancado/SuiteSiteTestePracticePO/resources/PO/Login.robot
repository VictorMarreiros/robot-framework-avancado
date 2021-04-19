*** Settings ***
Library    SeleniumLibrary
Library         FakerLibrary


*** Variables ***
${LOGIN_TITLE}                  Login - My Store
${LOGIN_CMP_EMAIL}              id=email_create
${LOGIN_BTN_SUBMITCREATE}       id=SubmitCreate


*** Keywords ***
#### Ações
Informar um e-mail válido
    Wait Until Element Is Visible   ${LOGIN_CMP_EMAIL}
    ${EMAIL}=                       FakerLibrary.email
    Set Suite Variable              ${EMAIL}
    Input Text                      ${LOGIN_CMP_EMAIL}    ${EMAIL}

Clicar em "Create an account"
    Click Button    ${LOGIN_BTN_SUBMITCREATE}

