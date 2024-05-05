*** Settings ***
Resource    ../resources/browser_management.robot
Suite Setup    Open Browser To BookStack Home
Suite Teardown    Close All Browsers
Test Setup    Log In

*** Variables ***
${USERNAME}    admin@example.com
${PASSWORD}    password
${BOOK_TITLE}    New Book From Robot

*** Test Cases ***
Create A New Book
    [Documentation]    Test case for creating a new book in BookStack.
    Go To Create Book Page
    Fill Out Book Form    ${BOOK_TITLE}
    Submit New Book
    Book Should Be Listed    ${BOOK_TITLE}
    Log out

*** Keywords ***
Log In
    Input Text    name=email    ${USERNAME}
    Input Text    name=password    ${PASSWORD}
    Click Button  xpath=//button[contains(text(),'Log In')]

Go To Create Book Page
    Click Element    xpath=//header/nav[1]/div[1]/a[3]
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Create New Book')]
    Click Element    xpath=//span[contains(text(),'Create New Book')]

Fill Out Book Form
    [Arguments]    ${title}
    Input Text    name=name    ${title}

Submit New Book
    Click Button    xpath=//button[@type='submit'][contains(text(),'Save Book')]

Book Should Be Listed
    [Arguments]    ${title}
    Wait Until Element Is Visible    xpath=//span[contains(text(),'New Book From Robot')]
    Page Should Contain Link    ${title}

Log out
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Admin')]
    Click Element    xpath=//span[contains(text(),'Admin')]
    Wait Until Element Is Visible    xpath=//div[contains(text(),'Logout')]
    Click Element    xpath=//div[contains(text(),'Logout')]