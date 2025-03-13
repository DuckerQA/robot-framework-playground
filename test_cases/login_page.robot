*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Login Page
    open browser    https://www.saucedemo.com/  chrome
    maximize browser window
    wait until element is visible    id:user-name

    input text    id:user-name     standard_user
    input password    id:password   secret_sauce
    click button    login-button
    wait until element is visible    xpath=//div[@class='inventory_list']
    sleep   1
    close browser

*** Keywords ***

