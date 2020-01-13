*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
Get screenshot of google logo
        open browser  http://google.com     chrome
        maximize browser window
        capture element screenshot  xpath://*[@id="hplogo"]     C:/Users/psing/PycharmProjects/AutomatioRobotFramework/googleLogo.png
        close all browsers

Get screenshot of whole page of google
        open browser  http://google.com     chrome
        maximize browser window
        capture page screenshot  C:/Users/psing/PycharmProjects/AutomatioRobotFramework/googlePage.png
        close all browsers
