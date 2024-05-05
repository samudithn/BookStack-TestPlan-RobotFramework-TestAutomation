*** Settings ***
Resource    ../resources/browser_management.robot
Suite Setup    Open Browser To BookStack Home
Suite Teardown    Close Browser

*** Variables ***
${USERNAME}    admin@example.com
${PASSWORD}    password

*** Test Cases ***
Invalid Login
    Input Text    name=email    wrong@example.com
    Input Text    name=password    wrongpassword
    Click Button    xpath=//button[contains(text(),'Log In')]
    Wait Until Element Is Visible    xpath=//div[contains(text(),'These credentials do not match our records.')]
    Page Should Contain    These credentials do not match our records.
