*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
Resource    ../resources/locators.robot
Library    ../resources/custom_keywords.py

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

Login with Invalid Credentials
    Enter Invalid Credentials  adminKoko    wrong_password

Verify Login Error Message
    ${error_message}=    Get Login Error Message
    Should Contain    ${error_message}    Epic sadface: Username and password do not match any user in this service
