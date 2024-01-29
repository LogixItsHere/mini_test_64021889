*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    https://automationexercise.com/   chrome


*** Variables ***
${email}         test@gamil.com 



*** Keywords ***

Click Product Element
    Click Element       //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
    
Click Submit Button
    Click Button   //*[@id="subscribe"]


Input Email
    [Arguments]    ${email}
    Input Text    //*[@id="susbscribe_email"]    ${email}



*** Test Cases ***
Register with valid info
   [Documentation]
    Element Should Be Visible  //*[@id="slider-carousel"]/div
    Click Product Element
    Page Should Contain    text=All Products
    Scroll Element Into View   //*[@id="footer"]
    Wait Until Page Contains    text=Subscription
    Input Email                  ${email}
    Click Submit Button
    Wait Until Page Contains    text=You have been successfully subscribed!



 
    