*** Settings ***
Resource    driver_setup.robot
Test Setup    ChromeDriver Setup
Test Teardown   ChromeDriver Close

*** Test Cases ***
Fill Hotel Form
    Go To   https://formsmarts.com/form/axi?mode=h5
    Input Text    u_KqI_60857   Sandra
    Input Text    u_KqI_60858   Gutierrez
    Input Text    u_KqI_60859   ferny.gutierrez@gmail.com
    Input Text    u_KqI_60860   Carrera 17 No. 136 - 73
    Select From List By Label    u_KqI_60871    Colombia
    Input Text    u_KqI_60861   22/01/2020
    Click Element   id:u_KqI_60866_0
    Input Text    u_KqI_60870   3
    Click Element   name:submit
    Capture Page Screenshot   filename=hotel_form.png