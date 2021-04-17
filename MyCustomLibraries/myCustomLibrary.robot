*** Settings ***
Library     ./Libraries/CustomLibTask/ageConversor.py

*** Test Cases ***
Teste de conversão de idade para segundos
    Converter "22" anos para segundos

Teste de conversão de idade para horas
    Converter "22" anos para horas

Teste de conversão de idade para dias
    Converter "22" anos para dias

*** Keywords ***
Converter "${ANOS}" anos para segundos
    ${IDADE_SEGUNDOS}       Anos Em Segundos       ${ANOS}
    Log     ${IDADE_SEGUNDOS}


Converter "${ANOS}" anos para horas
    ${IDADE_HORAS}          Anos Em Horas          ${ANOS}
    Log     ${IDADE_HORAS}


Converter "${ANOS}" anos para dias
    ${IDADE_DIAS}           Anos Em Dias           ${ANOS}
    Log     ${IDADE_DIAS}
