*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LOGIN_TITLE}                  Login - My Store
${LOGIN_CMP_EMAIL}              id=email_create
${LOGIN_BTN_SUBMITCREATE}       id=SubmitCreate


*** Keywords ***
#### Ações
Informar um e-mail válido
    Wait Until Element Is Visible   ${LOGIN_CMP_EMAIL}
    ${EMAIL}                        Generate Random String
    Set Suite Variable              ${EMAIL}
    Input Text                      ${LOGIN_CMP_EMAIL}    ${EMAIL}@testerobot.com

Clicar em "Create an account"
    Click Button    ${LOGIN_BTN_SUBMITCREATE}

