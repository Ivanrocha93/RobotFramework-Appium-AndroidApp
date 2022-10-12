*** Settings ***
Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session

*** Test Cases ***
Deve logar com sucesso
    Go to login form

    Input Text    id=io.qaninja.android.twp:id/etEmail    eu@papito.io
    Input Text    id=io.qaninja.android.twp:id/etPassword    qaninja

    Click Element    id=io.qaninja.android.twp:id/btnSubmit
    Wait Until Page Contains    Show! Suas credenciais são validas.


