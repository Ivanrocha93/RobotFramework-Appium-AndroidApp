*** Settings ***
Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session



*** Test Cases ***
Deve realizar um clique simples
    Go to short click
    
    Click Element     id=io.qaninja.android.twp:id/short_click
    Wait Until Page Contains        Isso é um clique simples

Deve realizar um clique longo
    Go to long click

    Long Press    id=io.qaninja.android.twp:id/long_click    1000
    Wait Until Page Contains        CLIQUE LONGO OK