# Book Stack - Robot Framework based Test Automation

Automated few test cases of Book Stack open source web application

Link- https://github.com/BookStackApp/BookStack

## PIP install requirements

pip install robotframework <br />
pip install robotframework-seleniumlibrary <br />
pip install robotframework-requests <br />

## List of Test cases automated as POC

1. Verify suceessfull login to Book Stack application <br />
2. Verify unsuceessfull login to Book Stack application <br />
3. Verify user ability to 'Create New Book' <br />

## Commands to run the RobotFramework automated testcases

1. Verify suceessfull login to Book Stack application- <b> robot -d results tests/login_Success_Tests.robot </b> <br />
2. Verify unsuceessfull login to Book Stack application- <b>robot -d results tests/login_Fail_Tests.robot</b> <br />
3. Verify user ability to 'Create New Book'- <b>robot -d results tests/create_book_test.robot<b>

## Demostration of test execution


https://github.com/samudithn/BookStack-TestPlan-RobotFramework-TestAutomation/assets/47728418/8cd9a83b-02a2-496c-aab5-e4fdb521256c

