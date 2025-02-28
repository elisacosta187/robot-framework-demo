*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/loginPage.robot
Resource   ../resources/common.robot

Suite Setup      Open Headless Browser And Maximize    ${LOGIN_URL}
Test Setup       Go To Login Page

*** Test Cases ***

Verify Login Page Loads Successfully
    ${status_code}=  Get Url Status    ${BASE_URL}
    Should Be Equal As Numbers    ${status_code}    200

Successful Login Takes User To Inventory Page
    Login With Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}  
    Wait Until Page Contains Element  ${INVENTORY_LIST}
    Location Should Contain    inventory.html

Invalid Login Shows Error Message
    Login With Credentials    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    Wait Until Element Is Visible  ${ERROR_MESSAGE}
