*** Settings ***
Documentation  Auto-03
Library  SeleniumLibrary
Resource  Resources/PageObject/KeywordDefinationFiles/Common.robot
Resource  Resources/PageObject/KeywordDefinationFiles/CJ1/TestCase_MainFlow/Testcase_MainFlow.robot
Variables  Resources/PageObject/TestData/Testdata.py
Suite Teardown  Đóng trình duyệt

*** Variables ***
${urlMSBVay}  https://upl.dev.df.msb.com.vn/
${browser}  Chrome

*** Test Cases ***
TC001
    [Documentation]  KH để lại yêu cầu tư vấn từ MH Home page
    [Tags]  taind11
    Open Landing page   ${urlMSBVay}  ${browser}
    Từ màn hình Home Page, click button "Để lại yêu cầu hỗ trợ" ở góc trái của page
    Input valid data vào from
    Click button "Xác nhận" để tiếp tục
    Input valid OTP

TC002
    [Documentation]  KH để lại yêu cầu tư vấn từ MH Home page
    [Tags]  taind11
    Open Landing page   ${urlMSBVay}  ${browser}
    Từ màn hình Home Page , click button "Cần tư vấn trực tiếp" ở dưới cùng của page
    Input valid data vào from
    Click button "Xác nhận" để tiếp tục
    Input valid OTP

TC003
    [Documentation]  KH để lại yêu cầu tư vấn từ MH Chi tiết SP
    [Tags]  taind11
    Open Landing page   ${urlMSBVay}  ${browser}
    Từ màn hình Home Page chọn 1 sản phẩm và click button "Xem gợi ý"
    Click button "Khám phá" trên popup của sản phẩm
    Click button "Để lại yêu cầu" ở góc trái màn hình
    Input valid data vào from
    Click button "Xác nhận" để tiếp tục
    Input valid OTP

TC004
    [Documentation]  KH để lại yêu cầu tư vấn từ MH Chi tiết SP
    [Tags]  taind11
    Open Landing page   ${urlMSBVay}  ${browser}
    Từ màn hình Home Page chọn 1 sản phẩm và click button "Xem gợi ý"
    Click button "Khám phá" trên popup của sản phẩm
    Click button "Cần tư vấn trực tiếp" ở cuối màn hình
    Input valid data vào from
    Click button "Xác nhận" để tiếp tục
    Input valid OTP

TC005
    [Documentation]  KH để lại yêu cầu tư vấn từ MH Chi tiết SP
    [Tags]  taind11
    Open Landing page   ${urlMSBVay}  ${browser}
    Chọn 1 sản phẩm (Tiền nhanh or Vay linh hoạt) và Open màn hình chi tiết sản phẩm
    Click button "Tính toán khoản vay"
    Input số tiền, thời gian và mục đích vay
    Click button "Chi tiết" ở phương án
    Click button "Để lại yêu cầu" bên góc trái màn hình chi tiết khoản vay
    Input valid data vào from
    Click button "Xác nhận" để tiếp tục
    Input valid OTP

TC006
    [Documentation]  KH để lại yêu cầu tư vấn từ MH Chi tiết SP
    [Tags]  taind11
    Open Landing page   ${urlMSBVay}  ${browser}
    Chọn 1 sản phẩm (Tiền nhanh or Vay linh hoạt) và Open màn hình chi tiết sản phẩm
    Click button "Tính toán khoản vay"
    Input số tiền, thời gian và mục đích vay
    Click button "Chi tiết" ở phương án
    Click button "Cần tư vấn trực tiếp" ở cuối màn hình
    Input valid data vào from
    Click button "Xác nhận" để tiếp tục
    Input valid OTP

TC007
    [Documentation]  Khách hàng tạo hồ sơ vay với nguồn thu nhập từ lương
    [Tags]  taind11
    Open Landing page   ${urlMSBVay}  ${browser}
    Chọn 1 sản phẩm (Tiền nhanh or Vay linh hoạt) và Open màn hình chi tiết sản phẩm
    Click button "Tính toán khoản vay"
    Input số tiền, thời gian và mục đích vay
    Click "Đăng ký ngay"
    KH upload ID doc thành công và click "Tiếp tục"
#    KH điền thông tin vào màn hình basic info và click "Tiếp tục"
#    KH nhập valid OTP và tiếp tục
#    KH input valid thông tin vào màn hình điền đơn đăng ký và tiếp tục
#    KH confirm và tiếp tục
#    KH upload hồ sơ và click "Nộp hồ sơ"