*** Settings ***

Resource    ../resources/base.robot

Test Setup    Open session

Test Teardown    close session

*** Variables ***
#${NOME}    Ferndado Papito
#@{CARROS}    Civic    Lancer    Chevette    Brasilia
#&{CARRO}    nome=Lancer    modelo=Evolution    ano=2020

${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle
*** Test Cases ***
Deve acessar a tela dialogs   
    Open Navigator
    Click Text                      DIALOGS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}   
    Element Text Should Be          ${TOOLBAR_TITLE}    DIALOGS

    
Deve acessar a tela Forms  
    Open Navigator

    Click Text                      FORMS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}   
    Element Text Should Be          ${TOOLBAR_TITLE}    FORMS 

Deve acessar a tela vingadores
    Open Navigator   

    Click Text                      AVENGERS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}   
    Element Text Should Be          ${TOOLBAR_TITLE}    AVENGERS          

   