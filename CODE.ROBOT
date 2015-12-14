*** Settings ***
Library     Selenium2Library

*** Test Cases ***
Test on Outfittery website.
#TEST CASE 1
Test case 1 : This is to ckeck the Landing page of the Outfittery website
    open browser  https://www.outfittery.com/   ff
    maximize browser window
    wait until page contains  SHOPPING FOR MEN
    Execute JavaScript    window.scrollTo(0, 2000)
    wait until page contains  Conservative Outfits
    Execute JavaScript    window.scrollTo(0, 1000)
    wait until page contains  Try Your Outfits
    Execute JavaScript    window.scrollTo(0, 1000)
    wait until page contains element  partial link=LET'S GO!
    capture page screenshot
    close browser

#TEST CASE 2
Test case 2 : This is to check the user navigating by selecting all the opptions to Create a profile

    Open Browser  https://www.outfittery.com  ff
    maximize browser window
    WAIT UNTIL PAGE CONTAINS  SHOPPING FOR MEN
    click element  partial link=LET'S GO!
    click element  css=a[data-answer-name='dark denim 4']
    click element  css=a[data-answer-name='sporty 4']
    capture page screenshot
    click element  css=a[data-answer-name='classic 4']
    click element  css=input[type='submit']
    WAIT UNTIL PAGE CONTAINS   Which Style Do You Like The Best?
    click element  css=a[data-answer-name='have to wear uniform']
    click element  css=a[data-answer-name='conservative']
    click element  css=a[data-answer-name='suit 2']
    Execute JavaScript    window.scrollTo(0, 500)
    click element  css=input[value='Save and proceed']
    WAIT UNTIL PAGE CONTAINS   Which shoe style do you like?
    click element  css=a[data-answer-name='sneakers']
    click element  css=a[data-answer-name='chucks']
    click element  css=a[data-answer-name='sneakers casual']
    click element  css=a[data-answer-name='timberland boots']
    click element  css=a[data-answer-name='classic trendy']
    click element  css=a[data-answer-name='dont like any shoe style']
    click element  css=a[data-answer-name='classic business']
    Execute JavaScript    window.scrollTo(0, 2000)
    click element  xpath=//*[@id="maSlider"]/div/div[3]/div[4]/div/div[4]/div[2]/input
    WAIT UNTIL PAGE CONTAINS   Which items would you never wear?
    click element  css=a[data-answer-name='colored chinos']
    click element  css=a[data-answer-name='pink shirt']
    click element  xpath=//*[@id="maSlider"]/div/div[4]/div[4]/div/div[4]/div[2]/input
    WAIT UNTIL PAGE CONTAINS   Which brands do you like?
    click element  css=a[data-answer-name='levis']
    click element  css=a[data-answer-name='tommy']
    click element  xpath=//*[@id="maSlider"]/div/div[5]/div[4]/div/div[4]/div[2]/input
    WAIT UNTIL PAGE CONTAINS   How old do you feel?
    click element  css=a[data-answer-name='18-30']
    click element  css=a[data-answer-name='55+']
    click element  xpath=//*[@id="maSlider"]/div/div[6]/div[4]/div/div[4]/div[2]/input
    WAIT UNTIL PAGE CONTAINS   What is the main motivation to use OUTFITTERY?
    click element  css=a[data-answer-name='personal advice']
    click element  css=a[data-answer-name='testing the service']
    click element  xpath=//*[@id="maSlider"]/div/div[7]/div[4]/div/div[4]/div[2]/input
    WAIT UNTIL PAGE CONTAINS  Create your profile now
    sleep  3
    Close Browser

#TEST CASE 3
Test case 3 : This is to check the Customer Login with valid credential

    Open Browser  https://www.outfittery.com  ff
    maximize browser window
    WAIT UNTIL PAGE CONTAINS  SHOPPING FOR MEN
    click element  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[1]/a
    WAIT UNTIL PAGE CONTAINS   Welcome to OUTFITTERY
    input text  xpath=//*[@id="username"]   ram.kingishere.raj@gmail.com
    input password  xpath=//*[@id="password"]  goodboys
    click element  xpath=//*[@id="submit"]
    sleep  10
    click element  xpath=//*[@id="menuLoggedIn"]/span
    click element  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/ul/li[5]/a
    sleep  3
    Close Browser


#TEST CASE 4
Test case 4 : This is to check the Customer Login with invalid credential

    Open Browser  https://www.outfittery.com  ff
    maximize browser window
    WAIT UNTIL PAGE CONTAINS  SHOPPING FOR MEN
    click element  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[1]/a
    WAIT UNTIL PAGE CONTAINS   Welcome to OUTFITTERY
    input text  xpath=//*[@id="username"]   abcd@gmail.com
    input password  xpath=//*[@id="password"]  kjkjhkjhkj
    click element  xpath=//*[@id="submit"]
    wait until element is visible  xpath=//*[@id="alertModal"]/div/div
    click element  xpath=//*[@id="alertModal"]/div/div/button
    sleep  3
    Close Browser

#TEST CASE 5
Test case 5 : This is to check the Customer Login with facebook credential

    Open Browser  https://www.outfittery.com  ff
    maximize browser window
    WAIT UNTIL PAGE CONTAINS  SHOPPING FOR MEN
    click element  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[1]/a
    WAIT UNTIL PAGE CONTAINS   Welcome to OUTFITTERY
    click element  xpath=//*[@id="fb_signin"]/input[2]
    input text  xpath=//*[@id="email"]  ram.kingishere.raj@gmail.com
    input password  xpath=//*[@id="pass"]   goodboys
    click element  xpath=//*[@id="u_0_2"]
    sleep  3
    Close Browser
