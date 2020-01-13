*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${login url}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome
${Error msg}    Login was unsuccessful. Please correct the errors and try again.

*** Keywords ***
Open my browser
        open browser    ${login url}        ${BROWSER}
        maximize browser window

Close Browsers
        close all browsers

Open Login Page
        go to  ${login url}

Input username
        [Arguments]     ${username}
        input text      id:Email        ${username}

Input pwd
        [Arguments]     ${password}
        input text      id:Password     ${password}

click login button
        click element   xpath://input[@value='Log in']

click logout
        click element   xpath://a[text()='Logout']

Error message should be visible
        page should contain  Login was unsuccessful
        #element text should be      //div[@class='message-error validation-summary-errors']         ${Error msg}

Dashboard should be visible
        #page should contain     Dashboard
        element text should be   xpath://div[@class='content-header']       Dashboard1
