*** Settings ***
Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session

*** Test Cases ***
Deve remover o capitão america
    Go to avengers

    Drag and Drop    io.qaninja.android.twp:id/drag_handle    3    0
    Sleep    3
    
    