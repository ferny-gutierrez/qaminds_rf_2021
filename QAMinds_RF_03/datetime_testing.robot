*** Settings ***
Library    DateTime

*** Test Cases ***
Test Main
    ${my_date} =    Convert Date    20210101 12:00:00.111
    Log   ${my_date}
    ${my_new_date} =  add time to date    ${my_date}    7 days
    Log   ${my_new_date}