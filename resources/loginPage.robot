*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Resource   variables.robot

*** Keywords ***
Go To Login Page
    Go To    ${LOGIN_URL}
    Wait Until Element Is Visible    ${USERNAME_FIELD}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Go To Login Page And Login
    [Arguments]    ${username}    ${password}
    Go To Login Page
    Login With Credentials    ${username}    ${password}

Get URL Status
    [Arguments]    ${url}
    Create Session    my_session    ${url}
    ${response}    GET On Session    my_session    /
    RETURN    ${response.status_code}