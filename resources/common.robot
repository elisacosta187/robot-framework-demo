*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Open Headless Browser And Maximize
    [Arguments]    ${url}
    Open Browser    ${url}    headlesschrome
    Maximize Browser Window
