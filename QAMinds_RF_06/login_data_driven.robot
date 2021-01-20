*** Settings ***
Resource    login_template.robot
Test Setup    ChromeDriver Setup
Test Teardown   ChromeDriver Close
Test Template   Login DemoQA

*** Test Cases ***
Valid User And Pass   sandra   fernanda   valid_user_and_pass.png
Invalid User Pass Wrong   sandra   Leonardo   invalid_user_pass_wrong.png