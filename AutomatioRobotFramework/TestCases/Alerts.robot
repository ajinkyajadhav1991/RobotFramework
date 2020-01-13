*** Settings ***
Library   SeleniumLibrary


*** Variables ***



*** Test Cases ***
Handling Alerts
        open browser  https://testautomationpractice.blogspot.com/      chrome
        click element       //*[@id="HTML9"]/div[1]/button
        sleep  3
        #handle alert  accept
        #handle alert  dismiss
        alert should be present