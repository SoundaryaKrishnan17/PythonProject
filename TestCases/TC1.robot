*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  chrome
${URL}      https://demo.craterapp.com/
${EMAIL_TEXT_BOX}    id:email
${PASSWORD_TEXT_BOX}  id:password
${CLICK_LOGIN_BUTTON}  //*[@id="loginForm"]/button

*** Test Cases ***
TC1 Browser Login and Logout
    Open Browser   ${URL}  ${Browser}


*** Keywords ***
loginToApplication
   Input Text    id:email    admin@craterapp.com
   Input Password  id:password   crater@123
   Click Element   //*[@id="loginForm"]/button


