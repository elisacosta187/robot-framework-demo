*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Variables ***
${CHROME_PATH}    /usr/local/bin/chromedriver

*** Keywords ***
Open Headless Browser And Maximize
    [Arguments]    ${url}
    Open Browser    ${url}    headlesschrome    executable_path=${CHROME_PATH}
    Maximize Browser Window
