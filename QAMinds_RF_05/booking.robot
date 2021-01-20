*** Settings ***
Resource    driver_setup.robot
Test Setup    ChromeDriver Setup
Test Teardown   ChromeDriver Close

*** Test Cases ***
Booking Test
   Go To    https://www.phptravels.net/
   Click Element   //a[@class="select2-choice"]
   Input Text   //input[@type="search" and @name="dest"]    Cancun
   # Wait Until Element Is Visible   class:select2-results-dept-1 select2-result select2-result-selectable select2-highlighted
    Input Text    checkin   22/01/2021
    Input Text    checkout    24/01/2021
    Click Element   //button[@class="btn btn-white bootstrap-touchspin-up "]