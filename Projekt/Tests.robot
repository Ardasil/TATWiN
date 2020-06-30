*** Settings ***
Documentation    Suite description
Resource        MyKeywords.robot


*** Test Cases ***
Nr 1 - rejestracja
    Empty username  aaaa@aaaa.pl    123456  123456
    Invalid mail   janusz87356586  aaauh.aa.pl    123456   123456
    Password don't have at least 6 characters   janusz3532652   aaa@aaa.pl  123     123
    Passwords don't match   janusz3532652   aaa@aaa.pl      123456  654321

Nr 2 - logowanie
    Mail wasn't given
    Account with mail exists    tatwintest20202pk@gazeta.pl     tatwintest2020pk@gazeta.pl
    Password must be correct    gshgfsh     123456

Nr 3 - wyszukiwanie przedmiotów
    Product searching   headphones
    Product price sort low to high
    Product price sort high to low

Nr 4 - koszyk

    1st product pick
    2nd product pick
    3rd product pick
    4th product pick
    5th product pick
    6th product pick
    7th product pick
    8th product pick
    9th product pick
    10th product pick
    Enter cart
    Cart tests
    Cart item delete
