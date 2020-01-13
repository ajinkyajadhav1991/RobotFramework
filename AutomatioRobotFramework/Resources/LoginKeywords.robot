*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/Locators.py

*** Keywords ***
Open my browser
        [Arguments]     ${siteUrl}      ${browserName}
        open browser    ${siteUrl}      ${browserName}
        maximize browser window

Enter username
        [Arguments]     ${userName}
        input text      ${txt_userName}     ${userName}

Enter password
        [Arguments]     ${password}
        input text      ${txt_password}     ${password}

Click Sign In
        click button    ${btn_SignIn}

verify successful login
      title should be  Find a Flight: Mercury Tours:

close my browsers
        close all browsers
