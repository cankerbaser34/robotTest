*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py


*** Keywords ***

Open my browser
    [Arguments]  ${SiteUrl}     ${Browser}
    open browser    ${SiteUrl}     ${Browser}
    maximize browser window

Enter Username
    [Arguments]  ${username}

    input text  ${txt_loginUsername}  ${username}


Enter password
     [Arguments]     ${password}

    input text  ${txt_password}        ${password}


Click signIn

    click button  ${btn_signIn}

Verify success login

    title should be     Login: Mercury Tours

close
    close all browsers