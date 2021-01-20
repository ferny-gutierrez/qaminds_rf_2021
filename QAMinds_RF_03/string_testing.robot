*** Settings ***
Library   String

*** Variables ***
${LOWER_STR}    i am doing testing using robot
${UPPER_STR}    QA MINDS ROBOT FRAMEWORK

*** Test Cases ***
Verificar String
    log   ${LOWER_STR}
    log   ${UPPER_STR}
    Should Be String    ${LOWER_STR}
    Should Be String    ${UPPER_STR}
    Should Be Lowercase    ${LOWER_STR}
    Should Be Uppercase    ${UPPER_STR}
