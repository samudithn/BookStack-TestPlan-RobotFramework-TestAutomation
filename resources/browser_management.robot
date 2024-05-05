*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROMEDRIVER_PATH}    C:\\Users\\SAMUDITH NANAYAKKARA\\Downloads\\chromedriver-win64\\chromedriver-win64\\chromedriver.exe

*** Keywords ***
Open Browser To BookStack Home
    Open Browser    https://demo.bookstackapp.com/login    browser=chrome   executable_path=${CHROMEDRIVER_PATH}
    Maximize Browser Window
    Set Selenium Speed    0.5 seconds  # Slow down to watch test execution

Close Browsers
    [Teardown]    Close Browser
