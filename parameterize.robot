*** Settings ***
Documentation   To Validate the Login Form
Library         SeleniumLibrary
Library         ../customLibraries/Shop.py
Library         DataDriver      file=resources/data.csv     encoding=utf_8      dialect=unix
Test Setup      open the browser with the Mortgage payment url
#Test Teardown   Close Browser
Resource        resource2.robot
Test Template   Validate unsuccessful login

*** Variables ***

*** Test Cases ***
Login with user ${username} and password ${password}    testing     iquuw99



*** Keywords ***

Validate unsuccessful login
    [Arguments]     ${username}     ${password}
    Fill the login form     ${username}     ${password}
Fill the login form
    [Arguments]     ${username}     ${password}
    Input Text      id:username     ${username}
    Input Password  id:password     ${password}
    Click Button    signInBtn