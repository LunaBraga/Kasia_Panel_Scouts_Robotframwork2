
*** Settings ***
Library     SeleniumLibrary

Documentation       Suite description #automated tests for scout website

*** Variables ***
${LOGIN URL}        https://scouts-test.futbolkolektyw.pl/login

${BROWSER}     Chrome

${LOGIN INPUT}      xpath=//*[@id='login']
${PASSWORD INPUT}       xpath=//*[@id='password']
${SIGN IN BUTTON}       xpath=//*[contains(@class,'MuiButton-label')]
${LOGO}        xpath=//*[id="__next"]/div[1]main/div[3]/div[1]/div/div[1]
${SIGN OUT BUTTON}      xpath=//*[text()='Sign out']
${ENGLISH BUTTON}       xpath=//*[@id='__next']/div[1]/div/div/div/ul[2]/div[1]/div[2]/span
${ADD A PLAYER BUTTON}      xpath=//*[@id='__next']/div[1]/main/div[3]/div[2]/div/div/a/button/span[1]
${ADD PLAYER}       xpath=//*[@id="__next"]/div[1]/main/div[2]/form/div[1]/div/span
${EMAIL INPUT}      xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[1]/div/div/input
${NAME INPUT}       xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[2]/div/div/input
${SURNAME INPUT}        xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[3]/div/div/input
${PHONE INPUT}      xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[4]/div/div/input
${WEIGHT INPUT}     xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[5]/div/div/input
${HEIGHT INPUT}     xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[6]/div/div/input
${AGE INPUT}        xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[7]/div/div/input
${CLUB INPUT}       xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[9]/div/div/input
${LEVEL INPUT}      xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[10]/div/div/input
${MAIN POSITION INPUT}      xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[11]/div/div/input
${SECOND POSITION INPUT}        xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[12]/div/div/input
${ACHIEVEMENTS INPUT}       xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[14]/div/div/input
${LACZY NAD PILKA INPUT}        xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[16]/div/div/input
${MINUT INPUT}      xpatx=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[17]/div/div/input
${FACEBOOK INPUT}       xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[18]/div/div/input
${LEVEL INPUT}      xpath=//*[text()='Level']
${RIGHT LEG INPUT}      xpath=// *[ @ id = 'menu-leg'] / div[3] / ul / li[1]
${LEG INPUT}        xpath=//*[@id='mui-component-select-leg']
${LEFT LEG INPUT}       xpath=//*[@id='menu-leg']/div[3]/ul/li[2]
${DISTRICT INPUT}     xpath=//*[@id='mui-component-select-district']
${LOWER SILESIA INPUT}      xpath=//*[@id='menu-district']/div[3]/ul/li[1]
${SUBMIT BUTTON}        xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[3]/button[1]/span[1]
${CLEAR BUTTON}     xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[3]/button[2]/span[1]
${MAIN PAGE BUTTON}     xpath=//*[@id='__next']/div[1]/div/div/div/ul[1]/div[1]/div[2]/span
${NEW PLAYER BUTTON}        xpath=//*[@id='__next']/div[1]/main/div[3]/div[3]/div/div/a[5]/button/span[1]
${SAVE}     xpath=//*[@id="__next"]/div[1]/main/div[2]/div[1]/button/span[1]
${REPORTS BUTTON}       xpath=//*[@id='__next']/div[1]/div/div/div/ul[2]/div[3]/div[2]/span
${MY TEAM}      xpath=//*[@id="__next"]/div[1]/main/div[2]/div/table/thead/tr/th[1]
${ADD REPORT BUTTON}        xpath=//*[@id='__next']/div[1]/main/a/button/span[1]


*** Test Cases ***
Login to the system
    Open Login Page
    Type In Email
    Type In Password
    Click On The Sign In Button
    Assert Dashboard
    [Teardown]  Close Browser

Test logout
    Open Login Page
    Type In Email
    Type In Password
    Click On The Sign In Button
    Assert Dashboard
    Click on the Sign out Button
    [Teardown]  Close Browser

Test change the language
    Open Login Page
    Type In Email
    Type In Password
    Click On The Sign In Button
    Assert Dashboard
    Click on the English Button
    [Teardown]  Close Browser

Test Add a player
    Open Login Page
    Type In Email
    Type In Password
    Click On The Sign In Button
    Assert Dashboard
    Click on the add a player button

Test Add a player form
    Open Login Page
    Type In Email
    Type In Password
    Click On The Sign In Button
    Assert Dashboard
    Click on the add a player button
    Type in email
    Type in name
    Type in surname
    Type in phone
    Type in weight
    Type in height
    Type in age
    Click on the leg
    Click on the right leg
    Type in club
    Type in level
    Type in main position
    Type in second position
    Click on the ditrict
    Click on the lower silesia
    Type in achievements
    Type in laczy nas pilka
    Type in minut
    Type in facebook
    Click on the submit button
    Click on the main page button

Test Add a player form
    Open Login Page
    Type In Email
    Type In Password
    Click On The Sign In Button
    Assert Dashboard
    Click on the add a player button
    Type in email
    type in name
    type in surname
    type in phone
    type in weight
    type in height
    type in age
    click on the leg
    click on the right leg
    type in club
    type in level
    type in main position
    type in second position
    click on the ditrict
    click on the lower silesia
    type in ahcievements
    type in laczy nas pilka
    type in minut
    type in facebook
    click on the clear button

Test report
    Open login page
    Type In Email
    Type In Password
    Click On The Sign In Button
    Assert Dashboard
    Click on the super man button
    Click on the reports button
    Click on the add report button


*** Keywords ***
Open login page
    Open Browser  ${LOGIN URL} ${BROWSER}
    Title Should Be  Scouts panel - sign in
Type in email
    Input Text   ${LOGIN INPUT} user07@getnada.com
Type in password
    Input Text  ${PASSWORD INPUT} Test-1234
Click on the Sign in button
    Click Element  //*[contains(@class,'MuiButton-label')]
Assert dashboard
    Wait Until Element Is Visible  ${LOGO}
    Title Should Be  Scouts panel - sign in
    Capture Page Screenshot  alert.png
Click on the Sign out button
    Click Element  //*[text()='Sign out']
Click on the English button
    Click Element  //*[@id='__next']/div[1]/div/div/div/ul[2]/div[1]/div[2]/span
Click on the add a player button
    Click Element  //*[@id='__next']/div[1]/main/div[3]/div[2]/div/div/a/button/span[1]
Assert add player form
    Wait Until Element Is Visible  ${ADD PLAYER}
    Title Should Be  Add player
    Capture Page Screenshot  alert.png
Click on the new player button
    Click Element  xpath=//*[@id='__next']/div[1]/main/div[3]/div[3]/div/div/a[5]/button/span[1]
Type in email
    Input Text   xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[1]/div/div/input
Type in name
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[2]/div/div/input
Type in surname
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[3]/div/div/input
Type in phone
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[4]/div/div/input
Type in weight
    Input Text   xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[5]/div/div/input
Type in height
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[6]/div/div/input
Type in age
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[7]/div/div/input
Click on the leg
    Click element   xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[9]/div/div/input
Click on the right leg
    Click element  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[10]/div/div/input
Type in club
    Input Text
Type in level
    Input Text   xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[10]/div/div/input
Type in main position
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[11]/div/div/input
Type in second position
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[12]/div/div/input
Click on the ditrict
    Click element  xpath=//*[@id='mui-component-select-district']
Click on the lower silesia
    Click element    xpath=//*[@id='menu-district']/div[3]/ul/li[1]
Type in achievements
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[14]/div/div/input
Type in laczy nas pilka
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[16]/div/div/input
Type in minut
    Input Text  xpatx=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[17]/div/div/input
Type in facebook
    Input Text  xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[2]/div/div[18]/div/div/input
Click on the submit button
    Click element    xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[3]/button[1]/span[1]
Click on the main page button
    Click element  xpath=//*[@id='__next']/div[1]/div/div/div/ul[1]/div[1]/div[2]/span
Click on the clear button
    Click element   xpath=//*[@id='__next']/div[1]/main/div[2]/form/div[3]/button[2]/span[1]







${LEVEL INPUT}      xpath=//*[text()='Level']
${RIGHT LEG INPUT}      xpath=// *[ @ id = 'menu-leg'] / div[3] / ul / li[1]
${LEG INPUT}        xpath=//*[@id='mui-component-select-leg']
${LEFT LEG INPUT}       xpath=//*[@id='menu-leg']/div[3]/ul/li[2]















Assert Report
    Wait Until Element Is Visible  ${MY TEAM}
    Title Should Be  My team
    Capture Page Screenshot  alert.png
Click on the reports button
    Click Element
Click on the add report button
    Click Element

ases ***
