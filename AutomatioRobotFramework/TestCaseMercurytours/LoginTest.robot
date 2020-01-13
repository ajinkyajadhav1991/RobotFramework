*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}      chrome
${url}          http://newtours.demoaut.com
${username}     mercury
${password}     mercury

*** Test Cases ***
LoginTest
        Open my browser     ${url}      ${browser}
        Enter username      ${username}
        Enter password      ${password}
        Click Sign In
        sleep   3
        verify successful login
        close my browsers