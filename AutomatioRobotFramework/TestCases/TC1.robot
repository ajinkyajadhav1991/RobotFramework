*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}      chrome

*** Test Cases ***
LoginTest
    open browser    ${url}       ${browser}
    click element  xpath://a[text()='Log in']
    loginToApplication
    close all browsers


*** Keywords ***
loginToApplication
        input text  id:Email        ajinkya.jadhav38@gmail.com
        input text  id:Password     Ram3Sita#
        click element  xpath://input[@value='Log in']
