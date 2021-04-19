*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${PROFILE_TITLE}            xpath=//*[@id="center_column"]/p
${PROFILE_USERNAME}         xpath=//*[@id="header"]/div[2]//div[1]/a/span     

*** Keywords ***
## Conferências
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    ${PROFILE_TITLE}
    Element Text Should Be           ${PROFILE_TITLE}
    ...    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           ${PROFILE_USERNAME}    May Fernandes
