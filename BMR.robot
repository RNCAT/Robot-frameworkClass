*** Settings ***
Library    Selenium2Library

*** Variables ***
${SiteUrl}    https://www.fatnever.com/bmr/
${BROWSER}    Chrome

*** Keywords ***
BMR Cal
    [Arguments]                      
    Open Browser                     ${SiteUrl}            ${BROWSER}
    Radio Button Should Be Set To    id=sex                ${sex}
    Input Text                       name=Tall             ${tall}
    Input Text                       name=Age              ${age}
    Select From List By label        name=Activity         ${activity}
    Click Element                    //*[@id="button1"]
    Close Browser	

*** Test Cases ***
Case 01
    BMR Cal    Male    170    80    21    ออกกำลังกายน้อยเล่นกีฬา 1-3 วัน/สัปดาห์
Case 02
    BMR Cal    Female    165    70    25    ไม่ออกกำลังกายหรือออกกำลังกายน้อยมาก
Case 03
    BMR Cal    Male    160    60    16    ออกกำลังกายน้อยเล่นกีฬา 1-3 วัน/สัปดาห์
