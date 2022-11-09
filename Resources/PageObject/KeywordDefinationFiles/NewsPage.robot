*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Người dùng được điều hướng tới trang Góc tin tức của MSB
    wait until element is visible  ${newsPageTxt}   timeout=10

Click vào drop down ở phần "Tin tức"
    wait until element is visible  ${categoryList}   timeout=10
    click element  ${categoryList}

Chọn "Thông báo"
    wait until element is visible  ${option195104}   timeout=10
    click element  ${option195104}

Chọn tin tức "Thông báo chuyển đổi gói tài khoản cho khách hàng ưu tiên M-FIRST"
    wait until element is visible  ${news2}   timeout=10
    click element  ${news2}

Kiểm tra nội dung tin tức
    wait until element is visible  ${contentNews2}   timeout=10
