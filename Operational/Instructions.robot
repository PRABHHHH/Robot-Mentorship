*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Open Amazon Website
    Open Browser  ${Url}   ${Browser}
    Maximize Browser Window

Given User Clicks On Electronics Options
    
    Click Link  ${Electronics} 

Then User Searches For Particular Item
    [Arguments]  ${ARG}
    Input Text  ${Searchbar}  ${ARG}
    Click Element  ${SearchButton}

And User Clicks On The Item 
    Click Element  ${ItemNeeded}    
    
  
Then User Adds The Item In Cart
    Switch Window  New
    Scroll Element Into View  ${AddToCart}
    Click Element  ${AddToCart}

Given User Clicks On Cart
    Click Link  ${CartButton}


Then Users Checks For Recently Added Item
    [Arguments]  ${ARG}
    Page Should Contain  ${ARG}


Given User Clicks On Fashion Option
    Click Link  ${Fashion}
    
    
    

    

Then User Searches For Item
    Input Text  ${Searchbar}  ${jeans}
    Click Element  ${SearchButton}

Then User Should Be Able To Click On The Particular Item
    Scroll Element Into View  ${clickelement}
    Click Link  ${clickelement}

Then User Clicks On Size Chart
    Switch Window  New
    Scroll Element Into View  ${Sizechart}
    Click Element  ${Sizechart}

Then User Must Be Able To Fetch Data From Table 
    ${Data}     Get Text  xpath://table[@id='fit-sizechartv2-0-table-0']//tr[4]//td[5]
    Log To Console  ${Data}
