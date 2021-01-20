*** Settings ***
Resource    driver_setup.robot
Test Setup    ChromeDriver Setup
Test Teardown   ChromeDriver Close

*** Test Cases ***
Fill Inquiry Form
    Go To   http://formsmarts.com/html-form-example
    Select Frame    class:fs_embed
    Input Text    id:u_YGD_4607   Sandra
    Input Text    id:u_YGD_338354   Gutierrez
    Input Text    id:u_YGD_4608   ferny.gutierrez@gmail.com
    Input Text    id:u_YGD_4609   Test
    Select From List By Label    id:u_YGD_338367   Website Feedback
    Click Element   name:submit
    Capture Page Screenshot   filename=inquiry_form.png