*** Settings ***
Documentation
...
...
...
...
...



*** Variables ***
${ErrorMessage_Login}   css:.alert-danger
${user_name}     rahulshettyacademy
${invalid_password}     testkqjwkejasodi
${valid_password}       learning
${url}      https://www.rahulshettyacademy.com/loginpagePractise/
${shop_pageLoad}        css:.nav-link
${browser1}     Chrome


*** Keywords ***
open the browser with the Mortgage payment url
    Create Webdriver        ${browser1}      executable_path=/Users/jaxethhugomahiya/Downloads/chromedriver
    Go To       ${url}

#wait until Element is located in the page
#    Wait Until Element Is Visible   ${ErrorMessage_Login}
#Close Browser Session
 #   Close Browser