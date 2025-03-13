*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot
Library    ../resources/custom_keywords.py

*** Test Cases ***
Login and Logout
    Open SauceDemo
    Login With Valid Credentials
    Logout
    close browser

Login with Invalid Credentials
    Open SauceDemo
    Login with Invalid Credentials
    Verify Login Error Message
    Close Browser
