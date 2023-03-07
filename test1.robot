*** Settings ***
Library    SeleniumLibrary

#Resource
Documentation    This is my first robot test.

*** Variables ***
${text_variable}    this should be a text variable
${number_variable}    123456789

@{list_users}    Anna    Joanna    Maria    Jan    Piotr
@{list_ids}
...    1
...    2
...    3
...    4


#dictionary - UNIQUE_KEY = VALUE(s)
&{dict_en_pl}    hi=cześć    bye=cześć

*** Test Cases ***
#run test: robot tests/test1.robot

1st Test
    [tags]    first
    Log To Console    ${text_variable}
    Log To Console    @{list_users}

2nd Test
    [tags]    second
    Log To Console    @{list_ids}


3rd Test
    [tags]    third
    My New Keyword    123    test with kwd

4th Test 
    [tags]    fourth
    My New Keyword    222

*** Keywords ***
My New Keyword
    [Arguments]    ${number}    ${text}=default
    Log To Console    ${number}
    Log    ${number}
    Log    ${text}    level=ERROR






