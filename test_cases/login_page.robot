*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot

*** Test Cases ***
Login Page
    Open SauceDemo
    Login With Valid Credentials
    Logout
    close browser
