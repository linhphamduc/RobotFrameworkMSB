*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Keywords ***
Nút "Đọc thêm" được hiển thị trên giao diện trang chủ MSB
    element should be visible  ${readMoreBtn}  timeout=10

Click vào nút "Đọc thêm"
    click element  ${readMoreBtn}