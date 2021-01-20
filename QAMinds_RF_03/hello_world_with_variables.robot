*** Settings ***
Documentation   Esta es la documentacion a nivel de settings
*** Variables ***
${MESSAGE}    QA Minds

*** Test Cases ***
Hello World With Variables
    [Documentation]   Esta es la documentacion a nivel de test cases
    Log   ${MESSAGE}
Simple Hello World
    Log   Hello World