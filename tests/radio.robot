*** Settings ***
Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session



*** Test Cases ***
Deve Selecionar a opção python
    Go to radio buttons

    ${element}=    Set Variable    xpath=//android.widget.RadioButton[contains(@text,'Python')]

    Click Element     ${element}
    Wait Until Element Is Visible     ${element} 

    Element Attribute Should Match     ${element}    checked    true
