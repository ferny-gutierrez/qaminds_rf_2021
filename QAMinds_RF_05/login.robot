*** Settings ***
Resource    driver_setup.robot
Test Setup    Custom Setup
Test Teardown   ChromeDriver Close

*** Test Cases ***
Login Test
    Go to   https://demoqa.com/login
    Wait Until Element Is Visible   userName
    Wait Until Element Is Visible   password
    Input Text    userName    usuarioprueba
    Input Text    password    usuarioprueba
    Click Button    id:login
    Capture Page Screenshot   filename=login.png

*** Keywords ***
Custom setup
    ChromeDriver Setup
    Set Selenium Speed    2