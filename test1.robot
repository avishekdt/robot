*** Settings ***
Documentation    Suite description
Library         Selenium2Library


*** Variables ***
${URLwelcome}           https://www.screener.in
${BROWSER}              chrome
${COMP}                 maruti
*** Keywords ***
Open Google
  Open Browser  ${URLwelcome}    ${BROWSER}
  Input Text   //div[@id='top-nav-search']//input[@placeholder='Company Search...']    ${COMP}
  Select From List By Value  class="dropdown"  "Maruti Suzuki India L"
# //div[@id='top-nav-search']//input[@placeholder='Company Search...']
# nav.u-full-width.no-print.top-nav-holder:nth-child(2) div.container div.top-navigation div.top-nav-controls:nth-child(1) div:nth-child(4) div.has-addon.right-addon > input.u-full-width
#*** Test Cases ***
#Open Google Test
#    [Tags]    DEBUG
#    Open Google






