*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_resources.robot
Suite Setup     Open my browser
Suite Teardown      Close Browsers
Test Template       Invalid login


*** Test Cases ***              username                    password
Correct user empty password     admin@yourstore.com         ${EMPTY}
Correct user worng password     admin@yourstore.com         admin11
Worng user worng password       adm11@yourstore.com         admin11
Wrong user correct password     admin11@yourstore.com         admin


*** Keywords ***
Invalid login
        [Arguments]     ${username}     ${password}
        Input username      ${username}
        Input pwd       ${password}
        click login button
        Error message should be visible

