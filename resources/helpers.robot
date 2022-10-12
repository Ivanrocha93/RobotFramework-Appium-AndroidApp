*** Settings ***
Library    AppiumLibrary
Documentation    Aqui teremos as keywords helpers


*** Variables ***
${START}        COMEÇAR
${MENU}         xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}     id=io.qaninja.android.twp:id/navView

*** Keywords ***

Get Started
    Wait Until Page Contains        ${START}                    
    Click Text                      ${START}

Open Navigator
    Wait Until Element Is Visible   ${MENU} 
    Click Element                   ${MENU}
    Wait Until Element Is Visible   id=io.qaninja.android.twp:id/navView

Go to login form
    Open Navigator
    Click Text    FORMS
    Wait Until Page Contains    FORMS
    Click Text    LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

Go to radio buttons
    Open Navigator
    Click Text    INPUTS
    Wait Until Page Contains    INPUTS
    Click Text    BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida

Go to checkbox
    Open Navigator
    Click Text    INPUTS
    Wait Until Page Contains    INPUTS
    Click Text    CHECKBOX
    Wait Until Page Contains    Marque as techs que usam Appium
Go to short click
    Open Navigator
    Click Text    BOTÕES
    Wait Until Page Contains    BOTÕES
    Click Text    CLIQUE SIMPLES
    Wait Until Page Contains    Botão clique simples

Go to long click
    Open Navigator
    Click Text    BOTÕES
    Wait Until Page Contains    BOTÕES
    Click Text    CLIQUE LONGO
    Wait Until Page Contains    Botão clique longo
Go to sign up
    Open Navigator
    Click Text    FORMS
    Wait Until Page Contains    FORMS
    Click Text    CADASTRO
    Wait Until Page Contains    Bem-vindo, crie sua conta.

Go to avengers
    Open Navigator
    Click Text    AVENGERS
    Wait Until Page Contains    AVENGERS
    Click Text    LISTA
    Wait Until Page Contains    Capitão América
    