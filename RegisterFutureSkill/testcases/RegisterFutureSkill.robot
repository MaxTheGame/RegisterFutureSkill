*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/SuccessOTP.robot
Resource    ../keywords/RegisterPageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}    chrome
Suite Teardown    Close Browser

*** Test Cases ***

As a User , I want to Register success
    when user register to future skill platform with ${email} ${firstName} ${lastName} ${phoneNumber} ${newPassword} ${confirmPassword}
    Then When Check OTP on Telephone "ระบบได้ส่งรหัส"