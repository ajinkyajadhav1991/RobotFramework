*** Settings ***


*** Test Cases ***
TC1 User Registration Test
        [Tags]  Regression
        log to console  User Registration test is over

TC2 Login Test
        [Tags]  sanity  Regression
        log to console  This is login test
        log to console  Login Test is over

TC3 Change user setting test
        [Tags]  Regression
        log to console  Change user settings test is over

TC4 Logout Test
        [Tags]  sanity
        log to console  Logout test is over