*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${amazon}   https://www.amazon.com/
${options}  add_argument("--start-maximized")

${signin}   //span[contains(text(),'Hello, Sign in')]
${signup}   id:createAccountSubmit
${name_signup}     id:ap_customer_name
${email_signup}     id:ap_email
${pwd_signup}       id:ap_password
${pwdCheck_signup}      id:ap_password_check
${createAcc}    //input[@id='continue']
${mail_alert_ico}    //div[@id='auth-email-invalid-email-alert']//i[@class='a-icon a-icon-alert']
${username_alert_ico}   //div[@id='auth-customerName-missing-alert']//i[@class='a-icon a-icon-alert']
${pwd_alert_ico}    //div[@id='auth-password-invalid-password-alert']//i[@class='a-icon a-icon-alert']
${pwd_match_alert_ico}  //div[@id='auth-password-mismatch-alert']//i[@class='a-icon a-icon-alert']

${signin_mail_continue}     id:continue
${signin_mail_alert}     //div[@id='auth-email-missing-alert']//i[@class='a-icon a-icon-alert']
${signin_mail_dont_exist}   //div[@id='auth-error-message-box']//div[@class='a-box-inner a-alert-container']
${signin_mail_exists}   //h1[@class='a-spacing-small']
${signin_pwd_alert}     //div[@id='auth-error-message-box']//div[@class='a-box-inner a-alert-container']
${signin_submit}    id:signInSubmit
${signin_success_check}     //span[contains(text(),'Hello, tatwintest2020pk')]

${searchbox}    //input[@id='twotabsearchtextbox']
${product_quantity_on_screen}   //span[contains(text(),'1-16')]
${sort_dropdown}    css:.a-dropdown-prompt
${price_low_high}   id:s-result-sort-select_1
${price_high_low}   id:s-result-sort-select_2
${dropdown}     //*[@id="a-autoid-0-announce"]
${drop_low}     //*[@id="s-result-sort-select_1"]
${drop_high}    //*[@id="s-result-sort-select_2"]


${item_pick_test}       //*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[4]/div/span/div/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a/span
${add_cart_test}        //*[@id="add-to-cart-button"]
${pick_item}    //*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div
${add_to_cart}  //input[@id='add-to-cart-button']
${pick_another_item}    //div[@id='upsell_1_1']
${cart_value}   //div[@class='a-box-inner']//div[@class='a-row a-spacing-mini sc-subtotal sc-java-remote-feature']
${cart_item_quant}  //span[@class='a-button-text a-declarative']
${cart_items}       //*[@id="sc-subtotal-label-buybox"]
${cart_full_value}      //*[@id="sc-subtotal-amount-buybox"]/span
${cart_item_quant_change}   //a[@id='dropdown1_2']
${cart_item_delete}     css=.sc-action-delete input


${1st_item}       https://www.amazon.com/Cancelling-Headphones-Bluetooth-Microphone-Comfortable/dp/B019U00D7K/ref=sr_1_4?dchild=1&keywords=headphones&qid=1593004655&sr=8-4
${2nd_item}      https://www.amazon.com/AMD-Processor-Wraith-Stealth-Cooler/dp/B07B41WS48/ref=sr_1_2?dchild=1&keywords=processor&qid=1593006734&sr=8-2
${3rd_item}       https://www.amazon.com/FIFA-20-PS4-playstation-4/dp/B07RX7FZHQ/ref=sr_1_2?dchild=1&keywords=fifa+20&qid=1593006764&sr=8-2
${4th_item}      https://www.amazon.com/Power-Supply-Modular-Certified-Addressable/dp/B083WL6GYQ/ref=sr_1_1_sspa?dchild=1&keywords=power+supply&qid=1593006771&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzTzI5S0MyMk5NM0pOJmVuY3J5cHRlZElkPUEwMzI4NzgzMVZDUVc3TzZRUlNCNSZlbmNyeXB0ZWRBZElkPUEwMzE1MzA2MUpLWDVPWVdKNDU2WiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=
${5th_item}       https://www.amazon.com/XFX-Radeon-1286MHz-Graphics-RX-570P8DFD6/dp/B077VX31FZ/ref=sr_1_2?dchild=1&keywords=graphics+card&qid=1593006780&sr=8-2
${6th_item}       https://www.amazon.com/TP-Link-AC1900-Smart-WiFi-Router/dp/B07NF3K74H/ref=sr_1_1_sspa?dchild=1&keywords=router&qid=1593006788&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEySVUyQkdEODdPT0xHJmVuY3J5cHRlZElkPUEwNjU5NjU1NUVVUDVEMzJNVTNRJmVuY3J5cHRlZEFkSWQ9QTA0MDU3MjkzQ0hEM01GWE1QTDRJJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==
${7th_item}     https://www.amazon.com/Blue-NAND-1TB-SSD-WDS100T2B0A/dp/B073SBQMCX/ref=sr_1_1_sspa?dchild=1&keywords=ssd&qid=1593006793&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTDhJU0ZZWUxBOVpaJmVuY3J5cHRlZElkPUEwMzIxNjcyMzdRSkVETDZHTFNTUiZlbmNyeXB0ZWRBZElkPUEwODA1NjYzRkNQUUdXRDVDNTlVJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==
${8th_item}       https://www.amazon.com/KOOTION-Flash-Drives-Memory-Colors/dp/B07F8GSMW3/ref=sr_1_1_sspa?dchild=1&keywords=usb+64gb&qid=1593006799&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFOTjlUWTFZRThKRzQmZW5jcnlwdGVkSWQ9QTA0NDcyNzYxM0hGVEo0WklHMzVEJmVuY3J5cHRlZEFkSWQ9QTAyMzg5NjExVFA2RDRDQ1M5RThTJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==
${9th_item}      https://www.amazon.com/Witcher-Wild-Hunt-Complete-PlayStation-4/dp/B01K6010FM/ref=sr_1_2?dchild=1&keywords=witcher+3&qid=1593006807&sr=8-2
${10th_item}       https://www.amazon.com/Coby-Portable-Compact-Anti-Skip-Player/dp/B00WLITCTY/ref=sr_1_1_sspa?dchild=1&keywords=cd+player&qid=1593006814&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzVTIySTJTVjY1SFdYJmVuY3J5cHRlZElkPUEwODg3OTg0M0o0S0JDQjBTUzJQUiZlbmNyeXB0ZWRBZElkPUEwMDg0MDk0NTdYWDY0REVaQ0s4JndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==
${cart_1}       https://www.amazon.com/gp/cart/view.html?ref_=nav_cart



*** Keywords ***
Empty username
    [Arguments]     ${Mail}     ${Pwd}      ${PwdCheck}
    Open Browser    ${amazon}   Chrome   options=${options}
    sleep   1s
    click element   ${signin}
    sleep   1s
    click element   ${signup}
    sleep   1s
    input text      ${email_signup}     ${Mail}
    input text      ${pwd_signup}       ${Pwd}
    input text      ${pwdCheck_signup}      ${PwdCheck}
    click element       ${createAcc}
    element should be visible   ${username_alert_ico}
    comment     Login nie został podany
    sleep   1s
    reload page
Invalid mail
    [Arguments]     ${Name}     ${Mail}     ${Pwd}      ${PwdCheck}
    sleep   1s
    input text      ${name_signup}      ${Name}
    input text      ${email_signup}     ${Mail}
    input text      ${pwd_signup}       ${Pwd}
    input text      ${pwdCheck_signup}      ${PwdCheck}
    click element       ${createAcc}
    element should be visible   ${mail_alert_ico}
    comment     Użytkownik podał niepoprawny adres email
    sleep   1s
    reload page
Password don't have at least 6 characters
    [Arguments]     ${Name}     ${Mail}     ${Pwd}      ${PwdCheck}
    sleep   1s
    input text      ${name_signup}      ${Name}
    input text      ${email_signup}     ${Mail}
    input text      ${pwd_signup}       ${Pwd}
    input text      ${pwdCheck_signup}      ${PwdCheck}
    click element       ${createAcc}
    element should be visible   ${pwd_alert_ico}
    comment     Użytkownik podał zbyt krótkie hasło
    sleep   1s
    reload page
Passwords don't match
    [Arguments]     ${Name}     ${Mail}     ${Pwd}      ${PwdCheck}
    sleep   1s
    input text      ${name_signup}      ${Name}
    input text      ${email_signup}     ${Mail}
    input text      ${pwd_signup}       ${Pwd}
    input text      ${pwdCheck_signup}      ${PwdCheck}
    click element       ${createAcc}
    element should be visible   ${pwd_match_alert_ico}
    comment     Użytkownik podał różne hasła
    sleep   1s


Mail wasn't given
    execute javascript      window.open()
    switch window   locator=NEW
    go to   ${amazon}
    click element   ${signin}
    sleep   1s
    click element   ${signin_mail_continue}
    element should be visible   ${signin_mail_alert}
    comment     Mail nie został podany
    sleep   1s

Account with mail exists
    [Arguments]     ${Mail_error}   ${Mail_correct}
    reload page
    input text      ${email_signup}     ${Mail_error}
    sleep   1s
    click element   ${signin_mail_continue}
    element should be visible   ${signin_mail_dont_exist}
    comment     Podany mail był błędny i nie znajdował się w bazie
    reload page
    input text      ${email_signup}     ${Mail_correct}
    click element   ${signin_mail_continue}
    element should be visible   ${signin_mail_exists}
    comment     Podany mail był prawidłowy
    sleep   1s

Password must be correct
    [Arguments]     ${Pwd_error}    ${Pwd_correct}
    input text      ${pwd_signup}   ${Pwd_error}
    click element   ${signin_submit}
    sleep   1s
    element should be visible   ${signin_pwd_alert}
    comment     Podane hasło było nieprawidłowe
    sleep   1s
    input text  ${pwd_signup}   ${Pwd_correct}
    click element   ${signin_submit}
    sleep   1s
    element should be visible   ${signin_success_check}
    comment     Podane hasło było prawidłowe, z powodzeniem udało się zalogować na stronę


Product searching
    [Arguments]     ${product_name}
    execute javascript      window.open()
    switch window   locator=NEW
    go to   ${amazon}
    input text  ${searchbox}    ${product_name}
    press keys  ${searchbox}    RETURN
    comment     Wyszukano produkt
    sleep   1s
    should contain  ${product_quantity_on_screen}   16
    log     Wyświetlono ${product_quantity_on_screen} ofert
    sleep   1s

Product price sort low to high
    click element   ${dropdown}
    sleep   1s
    click element   ${drop_low}
    comment     Cena od najniższej do najwyższej
    sleep   3s

Product price sort high to low
    press keys  ${searchbox}    RETURN
    click element   ${sort_dropdown}
    sleep   1s
    click element   ${drop_high}
    comment     Cena od najwyższej do najniższej
    sleep   3s

1st product pick
    execute javascript      window.open()
    switch window   locator=NEW
    go to   ${1st_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

2nd product pick
    go to   ${2nd_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

3rd product pick
    go to   ${3rd_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

4th product pick
    go to   ${4th_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

5th product pick
    go to   ${5th_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

6th product pick
    go to   ${6th_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

7th product pick
    go to   ${7th_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

8th product pick
    go to   ${8th_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

9th product pick
    go to   ${9th_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

10th product pick
    go to   ${10th_item}
    sleep   5s
    click element   ${add_to_cart}
    sleep   5s

Enter cart
    go to   ${cart_1}


Cart tests
    sleep   2s
    comment     W koszyku znajduje sie 10 przedmiotow
    click element   ${cart_item_quant}
    sleep   1s
    click element   ${cart_item_quant_change}
    comment     Zmieniono ilość danego produktu, w koszyku znajduje sie 11 przedmiotow
    sleep   2s

Cart item delete
    click element   ${cart_item_delete}
    comment     Z koszyka usunieto przedmiot
    sleep   1s
    close browser