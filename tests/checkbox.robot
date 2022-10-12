*** Settings ***
Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session



*** Test Cases ***
Deve marcar a opção robot framework
    Go to checkbox

    ${element}=    Set Variable    xpath=//android.widget.CheckBox[contains(@text,'Robot Framework')]

    Click Element     ${element}
    Wait Until Element Is Visible     id=io.qaninja.android.twp:id/rvContainer 

    Element Attribute Should Match     ${element}    checked    true
