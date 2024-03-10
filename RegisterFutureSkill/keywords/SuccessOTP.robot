*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***

Check OTP on Telephone "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}