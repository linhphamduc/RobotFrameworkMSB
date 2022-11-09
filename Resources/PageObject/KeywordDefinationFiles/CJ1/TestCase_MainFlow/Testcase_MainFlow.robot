*** Settings ***
Library  SeleniumLibrary
Variables  Resources/PageObject/Locators/CJ1/Testcase_MainFlow.py

*** Keywords ***
Open Landing page
    [Arguments]  ${site_url}    ${browser}
    open browser  ${site_url}   ${browser}
    maximize browser window
    sleep  10s

Từ màn hình Home Page, click button "Để lại yêu cầu hỗ trợ" ở góc trái của page
    wait until element is enabled  ${consultancyBtn}
    click element  ${consultancyBtn}

Từ màn hình Home Page , click button "Cần tư vấn trực tiếp" ở dưới cùng của page
    run keyword and ignore error  scroll element into view  //a[text()='Mạng lưới MSB']
    sleep  2s
    wait until element is enabled  ${directCounseling}
    run keyword and ignore error  click element  ${directCounseling}

Input valid data vào from
    switch window  new
    wait until element is visible  ${quickMoney}
    click element  ${quickMoney}
    input text  ${fullName}  Nguyễn Đình Tài
    input text  ${phoneNumber}  0353999397
    input text  ${province}  Thành Phố Hà Nội
    press keys  ${province}  ENTER
    wait until element is enabled  ${district}
    input text  ${district}  Quận Cầu Giấy
    press keys  ${district}  ENTER
    input text  ${email}  ndt04051997@gmail.com
    run keyword and ignore error  scroll element into view  //h3[text()='Nội dung cần hỗ trợ']
    sleep  2s
    wait until element is enabled  ${day}
    run keyword and ignore error  click element  ${day}
    sleep  2s
    wait until element is enabled  ${time}
    run keyword and ignore error  click element  ${time}
    sleep  2s
    wait until element is enabled  ${contactChannel}
    run keyword and ignore error  click element  ${contactChannel}

Click button "Xác nhận" để tiếp tục
    run keyword and ignore error  scroll element into view  //div[text()='Mạng lưới MSB']
    sleep  2s
    wait until element is enabled  ${confirmBtn}
    run keyword and ignore error  click element  ${confirmBtn}

Input valid OTP
    wait until element is visible   //input[@aria-label = 'Digit 2']
    input text  //input[@aria-label = 'Please enter verification code. Digit 1']    1
    input text  //input[@aria-label = 'Digit 2']    1
    input text  //input[@aria-label = 'Digit 3']    1
    input text  //input[@aria-label = 'Digit 4']    1
    input text  //input[@aria-label = 'Digit 5']    1
    input text  //input[@aria-label = 'Digit 6']    1
    sleep  5s
    wait until element is visible  //span[text() = 'Đóng']
    element text should be  //h3[@class = 'title-center']   Để lại yêu cầu thành công

Từ màn hình Home Page chọn 1 sản phẩm và click button "Xem gợi ý"
    run keyword and ignore error  click element  //input[@id= 'home_select-loan_fast_money']
    click element  //button[text() = 'Xem gợi ý']
    sleep  5s

Click button "Khám phá" trên popup của sản phẩm
    wait until element is visible  //div[4]/div/div[2]/div/div[2]/div/div/a/div/button/span
    click element  //div[4]/div/div[2]/div/div[2]/div/div/a/div/button/span

Click button "Để lại yêu cầu" ở góc trái màn hình
    wait until element is enabled  ${consultancyBtn}
    click element  ${consultancyBtn}

Click button "Cần tư vấn trực tiếp" ở cuối màn hình
    run keyword and ignore error  scroll element into view  //div[text()='Bản quyền © 2021 thuộc về Ngân hàng TMCP Hàng Hải Việt Nam MSB']
    sleep  5s
    wait until element is enabled  ${directCounseling}
    run keyword and ignore error  click element  ${directCounseling}

Chọn 1 sản phẩm (Tiền nhanh or Vay linh hoạt) và Open màn hình chi tiết sản phẩm
    run keyword and ignore error  click element  //input[@id= 'home_select-loan_fast_money']
    click element  //button[text() = 'Xem gợi ý']
    sleep  5s
    wait until element is visible  //div[4]/div/div[2]/div/div[2]/div/div/a/div/button/span
    click element  //div[4]/div/div[2]/div/div[2]/div/div/a/div/button/span

Click button "Tính toán khoản vay"
    wait until element is visible  //span[text() = 'Tính toán khoản vay']
    run keyword and ignore error  click element  //span[text() = 'Tính toán khoản vay']
    sleep  5s

Input số tiền, thời gian và mục đích vay
    input text  //input[@name = 'desiredLoan']  100000000
    input text  //input[@name = 'loanTime']  12
    wait until element is visible  //div[@name = 'sourceIncome']
    run keyword and ignore error    scroll element into view    //div[text() ='Điều kiện tham gia và biểu phí chung']
    run keyword and ignore error  click element  //div[@name = 'sourceIncome']
    wait until element is visible  //div[@label='Thu nhập từ lương']
    click element  //div[@label='Thu nhập từ lương']
    wait until element is visible  //label[text() = 'Lương chuyển khoản qua ngân hàng MSB']
    click element  //label[text() = 'Lương chuyển khoản qua ngân hàng MSB']
    click element  //button[@id='product-detail_loan-plan']
    sleep  10s

Click button "Chi tiết" ở phương án
    run keyword and ignore error  click element  //span[text() = 'Chi tiết']

Click button "Để lại yêu cầu" bên góc trái màn hình chi tiết khoản vay
    wait until element is enabled  ${consultancyBtn}
    click element  ${consultancyBtn}