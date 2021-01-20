*** Settings ***
Resource    driver_setup.robot


*** Keywords ***
Login DemoQA
    [Arguments]   ${user}   ${pass}   ${image_name}
    Go to   https://demoqa.com/login
    Wait Until Element Is Visible   userName
    Wait Until Element Is Visible   password
    Input Text    userName    ${user}
    Input Text    password    ${pass}
    Click Button    id:login
    Capture Page Screenshot   filename=${image_name}