*** Settings ***
Documentation   To Validate the Login Form
Library     SeleniumLibrary
Library     Collections
Library     ../tests/customLibraries/Shop.py
Test Setup      open the browser with the Mortgage payment url
#Test Teardown   Close Browser
Resource        ../pageObjects/resource.robot
Resource        ../pageObjects/landingPage.robot
Resource        ../pageObjects/shopPage.robot
Resource        ../pageObjects/confirmationPage.robot
Resource        ../pageObjects/checkoutPage.robot

*** Variables ***
@{listOfProducts}       Blackberry  Nokia Edge



*** Test Cases ***


#Validate Unsuccessful Login
#    Fill the login form     ${user_name}    ${invalid_password}
##    wait until Element is located in the page     ${ErrorMessage_Login}
##    verify error message is correct
#    Select Admin User       user
#    Select User Option      stud

Validate Cards Display in the shopping page
    landingPage.Fill the login form     ${user_name}    ${valid_password}   ${select}
#    Select Admin User       user
#    Select User Option      stud

    shopPage.wait until Element is located in the page        ${shop_pageLoad}
    shopPage.Verify card titles in the shop page
    #shopPage.Select the Card         BlackBerry
    add items to cart       ${listOfProducts}


*** Keywords ***

#Fill the login form
#    [arguments]      ${username}     ${password}
#    Input Text      id:username     ${username}
#    Input Password  id:password     ${password}






#verify error message is correct
#   ${result}=   Get Text    ${ErrorMessage_Login}
#   Should Be Equal As Strings   ${result}      Incorrect username/password.

#Select Admin User
#    [arguments]     ${radio_element}
#    Click Element   css:input[value='${radio_element}']
#    Wait Until Element Is Visible       css:.modal-body
#    Click Button    id:okayBtn
#    Click Button    id:okayBtn
#    Click Button    id:okayBtn

#Select User Option
#    [arguments]     ${selectElement}
#
#    Wait Until Element Is Not Visible       css:.modal-body
#    Select From List By Value   css:select.form-control     ${selectElement}
#    Select Checkbox     terms
#    Checkbox Should Be Selected     terms
#    Click Button    signInBtn

#    @{expectedList} =   Create List     iphone X    Samsung Note 8  Nokia Edge  Blackberry
#    ${elements} =    Get WebElements     css:.card-title
#    @{actualList} =     Create List
#    FOR     ${element}   IN      @{elements}
#       Log  ${element.text}
#       Append To List       ${actualList}       ${element.text}
#    END
#
#    Lists Should Be Equal    ${expectedList}     ${actualList}

#Verify card titles in the shop page
#    @{expectedList} =   Create List     iphone X    Samsung Note 8  Nokia Edge  Blackberry
#    ${elements} =    Get WebElements     css:.card-title
#    @{actualList} =     Create List
#    FOR     ${element}   IN      @{elements}
#       Log  ${element.text}
#       Append To List       ${actualList}       ${element.text}
#    END
#
#    Lists Should Be Equal    ${expectedList}     ${actualList}

#Select the Card
#    [arguments]     ${cardName}
#    ${elements} =    Get WebElements     css:.card-title
#    ${index}=   Set Variable    0
#        FOR  ${element}  IN      @{elements}
#                Exit For Loop If    '${cardName}' == '${element.text}'
#                ${index}=   Evaluate   ${index} + 1
#        END
#    Click Button    xpath:(//*[@class='card-footer'])[${index}]/button