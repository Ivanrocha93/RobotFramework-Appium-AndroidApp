

*** Settings ***
Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session

#start_x - x-coordinate at which to start
#start_y - y-coordinate at which to start
#offset_x - x-coordinate distance from start_x at which to stop
#offset_y - y-coordinate distance from start_y at which to stop
#duration - (optional) time to take the swipe, in ms.

#x=1000/1080=0,92  y=355/1920=0,185

#x=280/1080=0,26    y=355/1920=0,185

*** Variables ***
${BTN_REMOVE}=    id=io.qaninja.android.twp:id/btnRemove

*** Test Cases ***
Deve remover o capitão america
    Go to avengers
    
    Swipe By Percent    88    18.5     25    18.5         
    Wait Until Element Is Visible    ${BTN_REMOVE}

    Click Element    ${BTN_REMOVE}
    Sleep    5   