*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Keywords ***

ChromeDriver Setup
    Log   ChromeDriver Setup
    ${parent_path}  ${dir} =  Split Path  ${CURDIR}
    Create Webdriver  Chrome  executable_path=${parent_path}\\drivers\\chromedriver.exe

ChromeDriver Close
    Log   ChromeDriver Close
    Close Browser
