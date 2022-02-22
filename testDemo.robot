*** Settings ***
Documentation   To Validate the Login Form
Library     SeleniumLibrary
# Test Setup
Test Teardown   Close Browser
Resource        resource.robot
#Resource        ../pageObjects/landingPage.robot



*** Variables ***
${ErrorMessage_Login}   css:.alert-danger
${username}     thequickbrownfoxjumps
${Invalid_Password}     testkqjwkejasodi
${url}      https://www.rahulshettyacademy.com/loginpagePractise/
${browser1}     Chrome
#Resource
*** Test Cases ***
Validate Successful Login
    open the browser with the Mortgage payment url
    Fill the login form
    wait until it checks and display error message
    verify error message is correct

*** Keywords ***

open the browser with the Mortgage payment url
    Create Webdriver        ${browser1}      executable_path=/Users/jaxethhugomahiya/Downloads/chromedriver
    Go To       ${url}
#Fill the login form
#    [arguments]     ${username}     ${password}
#    Input Text      id:username     ${username}
#    Input Password  id:password     ${Invalid_Password}
#    Click Button    signInBtn

wait until it checks and display error message
    Wait Until Element Is Visible   ${ErrorMessage_Login}

verify error message is correct
   ${result}=   Get Text    ${ErrorMessage_Login}
   Should Be Equal As Strings   ${result}      Incorrect username/password.

Close Browser Session
    Close Browser