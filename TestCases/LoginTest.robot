*** Settings ***

Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot
Suite Setup  Open my browser  ${SiteUrl}     ${Browser}
Suite Teardown  close all browsers

*** Variables ***
${Browser}   chrome
${SiteUrl}  http://demo.guru99.com/test/newtours/

${username}  tutorial
${password}  tutorial

*** Test Cases ***

Login Test Case
    Enter Username      ${username}
    Enter password      ${password}
    Click signIn
    sleep   2 seconds
    Verify success login
