*** Variables ***
${URL}     http://localhost:3000/web/
${BROWSER}    chrome

*** Keywords ***
กรอกข้อมูลเพื่อคำนวณ Duration
    [Arguments]    ${STARTDATE}    ${STARTMONTH}    ${STARTYEAR}    ${ENDDATE}    ${ENDMONTH}    ${ENDYEAR}
    Input Text    startDay    ${STARTDATE}
    Input Text    startMonth    ${STARTMONTH}
    Input Text    startYear    ${STARTYEAR}
    Input Text    endDay    ${ENDDATE}
    Input Text    endMonth    ${ENDMONTH}
    Input Text    endYear    ${ENDYEAR}
กดปุ่มเพื่อคำนวณ
    Click Button    calculate
ตรวจสอบผลการคำนวณ
    [Arguments]    ${RESULTDAY}
    Wait Until Page Contains    ${RESULTDAY}
