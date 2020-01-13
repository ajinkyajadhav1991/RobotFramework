*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}      chrome


*** Test Cases ***
Testing InputBox
    open browser        ${url}      ${browser}
    maximize browser window
    title should be  nopCommerce demo store
    click element  xpath://a[text()='Log in']
    ${"txt_emai"}   set variable  id:Email

    element should be visible  ${"txt_emai"}
    element should be enabled  ${"txt_emai"}

    input text  ${"txt_emai"}       JonhDat@gmail.com
    sleep  5
    clear element text  ${"txt_emai"}

    close browser

*** Keywords ***
