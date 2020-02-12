*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary
*** Variables ***
${URLwelcome}           https://www.google.com
${BROWSER}              chrome
*** Test Cases ***
Open Google Test in chrome
    [Tags]    DEBUG
#    ${result}=  run process  python  /tmp/helloworld.py
#    Should be equal as integers   ${result.rc}   0
#    Should be equal as strings   ${result.stdout}  hello, world
#    Log  ${result.stdout}
    Open Browser  ${URLwelcome}  browser=${BROWSER}
    Title should be  Google
    Capture Page Screenshot  filename=selenium-screenshot-{index}.png
    Close Browser




