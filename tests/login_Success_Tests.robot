*** Settings ***
Resource    ../resources/browser_management.robot
Suite Setup    Open Browser To BookStack Home
Suite Teardown    Close Browser

*** Variables ***
${USERNAME}    admin@example.com
${PASSWORD}    password

*** Test Cases ***
Valid Success Login
    Input Text    name=email    ${USERNAME}
    Input Text    name=password    ${PASSWORD}
    Click Button    xpath=//button[contains(text(),'Log In')]
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Admin')]
    Click Element    xpath=//span[contains(text(),'Admin')]
    Page Should Contain Element    xpath=//span[contains(text(),'Admin')]

