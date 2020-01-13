*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
GetAllLinksTC
        open browser  http://www.newtours.demoaut.com/  chrome
        maximize browser window
        ${allLinksCount}        get element count  xpath://a
        log to console  ${allLinksCount}


        @{linkItems}    create list

        : FOR   ${i}    IN RANGE    1   ${allLinksCount}+1
        \   ${linkText}     get text    xpath:(//a)[${i}]
        \   log to console  ${linkText}
