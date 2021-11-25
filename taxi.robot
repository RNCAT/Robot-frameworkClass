*** Settings ***
Library    Selenium2Library

*** Variables ***
${URL}        https://nhaidee.com/travel/%E0%B8%84%E0%B9%8D%E0%B8%B2%E0%B8%99%E0%B8%A7%E0%B8%93%E0%B8%84%E0%B9%88%E0%B8%B2%E0%B9%81%E0%B8%97%E0%B9%87%E0%B8%81%E0%B8%8B%E0%B8%B5%E0%B9%88/
${BROWSER}    Chrome

*** Test Cases ***
Taxi1
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            1
    Input Text                name=traffic             0
    Submit Form               id=c1
    Element Text Should Be    name=calculated_Price    35.00
    Close Browser
Taxi2
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            5
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    57.00
    Close Browser
Taxi3
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            15
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    117.00
    Close Browser
Taxi4
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            25
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    187.00
    Close Browser
Taxi5
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            45
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    341.00
    Close Browser
Taxi6
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            70
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    551.00
    Close Browser
Taxi7
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            100
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    851.00
    Close Browser
Taxi8
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            10
    Input Text                name=traffic             10
    Submit Form
    Element Text Should Be    name=calculated_Price    105.00
    Close Browser
Taxi9
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            0
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    0.00
    Close Browser
Taxi10
    Open Browser              ${URL}                   ${BROWSER}
    Input Text                name=distance            -10
    Input Text                name=traffic             0
    Submit Form
    Element Text Should Be    name=calculated_Price    0.00
    Close Browser