*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
Resource    ../resources/locators.robot

*** Keywords ***

Open SauceDemo
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${USERNAME_FIELD}

Login With Valid Credentials
    Input Text    ${USERNAME_FIELD}     ${VALID_USER}
    Input Password    ${PASSWORD_FIELD}   ${VALID_PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible   xpath=//div[@class='inventory_list']

Logout
    Click Element    ${BURGER_BUTTON}
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}
    Click Element    ${LOGOUT_BUTTON}
    Wait Until Element Is Visible    ${USERNAME_FIELD}