*** Settings ***
Library    Selenium2Library

*** Variables ***
${SiteUrl}    https://usedcar.honda.co.th/cal.php
${BROWSER}    Chrome

*** Test Cases ***
Case 01
    Open Browser                 ${SiteUrl}         ${BROWSER}
    Input Text                   id=price           4000000
    Input Text                   id=down_val        400000
    Select From List By Value    id=period          60
    Input Text                   id=interest        2.5
    Submit Form
    Element Text Should Be       id=result_total    3,600,000.00
    Element Text Should Be       id=result_month    66,000.00
    Close Browser
