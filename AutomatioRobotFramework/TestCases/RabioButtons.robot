*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio buttons
        open browser  ${url}        ${browser}
        maximize browser window
        set selenium speed  2

        #Selecting radio button
        select radio button  sex    Female
        select radio button  exp    5

        #selecting checkboxes
        select checkbox  BlackTea
        select checkbox     tea2
        unselect checkbox  RedTea
