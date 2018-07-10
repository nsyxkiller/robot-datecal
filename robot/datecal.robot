*** Settings ***
Library    SeleniumLibrary
Suite Setup  Open Browser    ${URL}    ${BROWSER}
Test Setup    Go To    ${URL}
Suite Teardown    Close Browser
Resource    resource.robot

*** Testcases ***
Calculate date Success
    กรอกข้อมูลเพื่อคำนวณ Duration    30    11    1984    10    7    2018
    กดปุ่มเพื่อคำนวณ
    ตรวจสอบผลการคำนวณ    12276 days
