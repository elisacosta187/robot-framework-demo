*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/loginPage.robot
Resource   ../resources/common.robot

Suite Setup      Open Headless Browser And Maximize    ${LOGIN_URL}
Test Setup       Go To Login Page And Login    ${VALID_USERNAME}    ${VALID_PASSWORD}

*** Test Cases ***

Add Item To Cart And Check Badge Update
    Wait Until Page Contains Element  ${INVENTORY_LIST}
    Click Button  ${ITEM_ADD_BUTTON}
    Wait Until Element Is Visible  ${CART_BADGE}
    Wait Until Element Contains    ${CART_BADGE}    1

Remove Item From Cart And Verify Update
    Wait Until Page Contains Element  ${INVENTORY_LIST}
    Click Button    ${ITEM_REMOVE_BUTTON}
    Wait Until Element Is Not Visible  ${CART_BADGE}