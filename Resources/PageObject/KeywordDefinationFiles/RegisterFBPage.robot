*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorsFB.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Chọn nút
    [Arguments]  ${txtBtn}
    wait until element is visible  //a[text() = 'English (UK)']
    click element   //a[text() = 'English (UK)']
    wait until element is visible  ${UKThemes}${txtBtn}${EndElement}
    click element   ${UKThemes}${txtBtn}${EndElement}

Quan sát giao diện
    wait until element is visible   ${listNeedToCheckPlaceholder}
    ${listInput}=   get webelements  ${listNeedToCheckPlaceholder}
    element text should be  ${listInput}[0]  Họ
    element text should be  ${listInput}[1]  Tên
    element text should be  ${listInput}[2]  Số di động hoặc email

Hover vào icon "!" cạnh trường Ngày sinh, quan sát hiển thị tooltip
    wait until element is visible   ${iconBirthdayHelp}
    mouse over  ${iconBirthdayHelp}
    element attribute value should be  ${iconBirthdayHelp}  title   Nhấp chuột để biết thêm thông tin

Click vào icon "!" cạnh trường Ngày sinh, quan sát hiển thị tooltip
    click element  ${iconBirthdayHelp}
    wait until element is visible  ${contentTooltip}
    element text should be  ${contentTooltip}   ${tooltipBirthday}

Hover vào icon "!" cạnh trường Giới tính, quan sát hiển thị tooltip
    wait until element is visible   ${iconGenderHelp}
    mouse over  ${iconGenderHelp}
    element attribute value should be  ${iconGenderHelp}    title   Nhấp để biết thêm thông tin

Click vào icon "!" cạnh trường Giới tính, quan sát hiển thị tooltip
    click element  ${iconGenderHelp}
    wait until element is visible  ${contentTooltip}
    element text should be  ${contentTooltip}    ${tooltipGender}

Nhập thông tin hợp lệ vào các trường "Họ", "Tên", "Số di động hoặc email", "Mật khẩu mới"
    input text  ${inputLastName}    Nguyen
    input text  ${inputFirstName}    Tai
    open browser  https://tempmailo.com/    Chrome
    wait until element is visible  //button[@class = 'iconx']
    ${email}=    get text  //input[@id = 'i-email']
    close browser
    switch browser  1
    wait until element is visible  ${inputEmail}
    input text  ${inputEmail}    ${tempEmail}
    wait until element is visible  ${inputEmailConfirmation}
    input text  ${inputEmailConfirmation}    ${tempEmail}
    input password  ${inputPassword}    ${password}

Chọn ngày sinh, giới tính hợp lệ
    select from list by value   ${selectDay}    19
    wait until element is visible  ${selectMonth}
    select from list by value   ${selectMonth}    11
    select from list by value   ${selectYear}    1999
    ${genderRadio}=    get webelements  ${listGenderRadio}
    click element   ${genderRadio}[1]

Bấm nút Đăng ký
    ${registerBtn}  get webelements  ${registerButton}
    click element   ${registerBtn}[0]
    wait until page contains element    ${needMoreInfomation}   30s
    element text should be  ${needMoreInfomation}   Chúng tôi cần thêm thông tin