*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
mouse actions test case
        #Right-click/ or open context menu
        open browser  http://google.com     chrome
        maximize browser window
        open context menu   xpath://*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input
        sleep   3

        #Double click
        go to   https://testautomationpractice.blogspot.com/
        double click element    xpath://*[@id="HTML10"]/div[1]/button
        sleep   3

        #Drag and Drop
        go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
        drag and drop   xpath://*[@id="box3"]   xpath://*[@id="box103"]
        sleep   3
        close all browsers




