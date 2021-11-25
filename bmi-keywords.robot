*** Settings ***
Library    Selenium2Library

*** Variables ***
${SiteUrl}    https://lovefitt.com/เครื่องคำนวณหาค่าดัชนีมวลกาย-bmi/
${BROWSER}    Chrome

*** Test Cases ***
Case 01
    BMI Cal    40    155    //tr[@class="odd bmi-1"]
Case 02
    BMI Cal    50    155    //tr[@class="bmi-2"]
Case 03
    BMI Cal    60    155    //tr[@class="odd bmi-3"]
Case 04
    BMI Cal    70    155    //tr[@class="bmi-4"]
Case 05
    BMI Cal    80    155    //tr[@class="odd bmi-5"]
*** Keywords ***
BMI Cal
    [Arguments]                         
    Open Browser                        ${SiteUrl}                           ${BROWSER}
    Input Text                          name=mass                            ${m}
    Input Text                          name=height                          ${h}
    Click Element                       //a[@class="bmi-cal-btn cal-btn"]
    Wait until page contains element    ${check}
    Close Browser	