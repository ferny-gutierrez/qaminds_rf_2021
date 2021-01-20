*** Variables ***
${PROJECT_NAME}   QA Minds
@{TECHNOLOGIES}   RobotFramework    Selenium    Python
&{MODULES}    module1=Introduction    module2=Setup

*** Test Cases ***
Test One
    Log   ${PROJECT_NAME} , ${PROJECT_NAME}[0]
    Log   ${TECHNOLOGIES}[1:]
    Log   ${MODULES}[module1]