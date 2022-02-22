*** Settings ***
Documentation   To Validate the Login Form
Library         SeleniumLibrary
Library         Collections
Library         String
Library         ../tests/customLibraries/Shop.py
Test Setup      open the browser with the Mortgage payment url
#Test Teardown   Close Browser
Resource        resource.robot

*** Variables ***

#Resource
*** Test Cases ***

Validate child window functionality
    Select the link of child window
    Verify the user is switched to child window
    Grab the Email ID in the child window
    hello world
    Switch to parent window and enter the Email Address      ${email}     ${valid_password}


*** Keywords ***
Select the link of child window
    Click Element       css:.blinkingText
    Sleep               5

Verify the user is switched to child window
    Switch Window       NEW
    Element Text Should Be          css:h1      DOCUMENTS REQUEST

Grab the Email ID in the child window
    ${text}=    get text    css:.red
    @{words}=   Split String       ${text}      at
    ${text_split}=      Get From List       ${words}    1
    log     ${text_split}
    @{words}=   Split String    ${text_split}
    ${email}=      Get From List       ${words}    0
    log     ${email}
    Set Global Variable     ${email}


Switch to parent window and enter the Email Address
    [arguments]     ${username}     ${password}
    Switch Window       MAIN
    Title Should Be     LoginPage Practise | Rahul Shetty Academy

    Input Text      id:username     ${username}
