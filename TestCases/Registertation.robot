*** Settings ***

Library  SeleniumLibrary

Resource  ../Resources/RegistrationKeyword.robot

Suite Setup  Open my browser  ${SiteUrl}     ${Browser}
Suite Teardown  close all browsers


*** Variables ***
${Browser}   chrome
${SiteUrl}  http://demo.guru99.com/test/newtours/


*** Test Cases ***
RegistrationTestCase
    sleep   2  seconds
    Click registration
    Enter first name    Cih
    Enter last name     Barba
    Enter phone     45464647
    Enter email         ca@yahoo.com
    Enter adress    terrassa
    Enter city      Barcelona
    Enter state     Barcelona
    Enter Postal Code   08223
    Select Country      SPAIN
    Enter user name     Canker
    Enter Password      11223344
    Enter confirmed Password    11223344
    Click Submit
    Verify successfull registration
    Close my browsers