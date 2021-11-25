*** Settings ***
Library    Selenium2Library

*** Variables ***
${Username}    624234002
${Password}    asdasdasda
${SiteUrl}     https://reg.skru.ac.th/registrar/login.asp
${BROWSER}     Chrome



*** Test Cases ***
Open Browser To Login Page
    Open Browser                ${SiteUrl}    ${BROWSER}
    Input Text                  name=f_uid    ${Username}
    Input Text                  name=f_pwd    ${Password}
    Submit Form
    Wait Until Page Contains
*** Keywords ***
