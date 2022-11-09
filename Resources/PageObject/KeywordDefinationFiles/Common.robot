*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Truy cập trình duyệt
    [Arguments]  ${site_url}  ${browser}
    open browser  ${site_url}  ${browser}
    maximize browser window

Truy cập trang
    [Arguments]  ${site_url}
    open browser  ${site_url}   Chrome
    maximize browser window

Đóng trình duyệt
    close browser