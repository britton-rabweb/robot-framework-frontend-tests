*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${QASITE}         qa.lightcloud.com
${BROWSER}        Chrome
${DELAY}          1
${VALID SUPERUSER}     britton.sparks@rabweb.com
${VALID PASSWORD}    Surprise1
${LOGIN URL}      http://${QASITE}/

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Lightcloud - Login

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    xpath=/html/body/div/section[1]/div/div[2]/form[1]/fieldset/input[1]    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    xpath=/html/body/div/section[1]/div/div[2]/form[1]/fieldset/input[2]    ${password}

Submit Credentials
    Click Button    xpath=//*[@id="login"]

#Site Page Should Be Open
 #   Location Should Be    ${WELCOME URL}
  #  Title Should Be    Welcome Page
