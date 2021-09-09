*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py


*** Keywords ***

Open my Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    open browser    ${SiteUrl}     ${Browser}
    maximize browser window

Click registration
    click link  ${link_Reg}

Enter first name

    [Arguments]  ${firstname}
    input text  ${txt_firstName}    ${firstname}
Enter last name
     [Arguments]  ${lastname}
    input text  ${txt_lastName}    ${lastname}

Enter phone
    [Arguments]  ${phone}
    input text  ${txt_phone}    ${phone}

Enter email
    [Arguments]  ${email}
    input text  ${txt_email}    ${email}

Enter adress

    [Arguments]  ${adress}
    input text  ${txt_add1}    ${adress}

Enter city
  [Arguments]  ${city}
  input text  ${txt_city}    ${city}

Enter state
  [Arguments]  ${state}
  input text  ${txt_state}    ${state}

Enter Postal Code
   [Arguments]  ${postalCode}
    input text  ${txt_postCode}    ${postalCode}

Select Country
    [Arguments]  ${country}
    select from list by label  ${drp_Country}   ${country}

Enter user name
   [Arguments]  ${user_name}
    input text  ${txt_Username}    ${user_name}

Enter Password

    [Arguments]  ${password}
    input text  ${txt_Password}    ${password}


Enter confirmed Password
     [Arguments]  ${confirmedpassword}
     input text  ${txt_conformedPassword}    ${confirmedpassword}

Click Submit
    click button    ${txt_submit}


Verify successfull registration
    page should contain     Thank you for registering.

Close my browsers
    close all browsers
