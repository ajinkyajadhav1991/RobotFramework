*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
switch between multiple browsers
        open browser  http://google.com     chrome
        maximize browser window
        sleep  3

        open browser  http://bing.com       chrome
        maximize browser window

        switch browser  1
        ${title}        get title
        log to console  ${title}

        switch browser  2
        ${title}        get title
        log to console  ${title}
