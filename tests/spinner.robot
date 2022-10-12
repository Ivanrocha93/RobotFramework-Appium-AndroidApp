*** Settings ***
Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session

*** Variables ***
${SPINNER}=    id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=    class=android.widget.ListView

*** Keywords ***
Choice job
    [Arguments]    ${Target}

    Click Element    ${SPINNER}
    Wait Until Element Is Visible    ${LIST_OPTIONS}

    Click Text    ${Target}
    Wait Until Page Contains    ${Target}



*** Test Cases ***
Deve selecionar o perfil QA
    Go to sign up
    Choice job    QA

Deve selecionar o perfil DevOps
    Go to sign up
    Choice job    DevOps

    
    