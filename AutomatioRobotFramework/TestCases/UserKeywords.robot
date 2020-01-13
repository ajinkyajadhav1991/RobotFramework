*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***
${url}      http://www.newtours.demoaut.com/
${browser}      chrome

*** Test Cases ***
TC1
    ${pageTitle}=    launchBrowser       ${url}          ${browser}
    log to console  ${pageTitle}
    input text     name:userName        mercury
    input text     name:password        mercury


