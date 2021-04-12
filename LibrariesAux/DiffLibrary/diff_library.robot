** Settings **
Documentation   https://marketsquare.github.io/robotframework-difflibrary/
Library         DiffLibrary

** Test Cases **
Comparando diferenca entre dois arquivos iguais
    Diff Files  ${CURDIR}/files/FirstFile.py    ${CURDIR}/files/SecondFile.py

Comparando diferenca entre dois arquivos diferentes
    Run Keyword And Expect Error   differences*     Diff Files       ${CURDIR}/files/FirstFile.py    ${CURDIR}/files/ThirdFile.py
