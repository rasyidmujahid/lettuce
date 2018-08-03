Feature: Test create order for product with item options
    As a user
    I want to be able to test if order a product with item options created successfully

    Scenario: Login works without error
    	Given I open the site "/login/loginForm.do"
        When  I set "abdurrasyid.mujahid@indolotte.com" to the inputfield "#userid"
        And   I set "pass#12345" to the inputfield "#tab_cont01 #password"
        And   I move to element "#btnLogin"
        And   I click on the button "#btnLogin"
        Then  I wait on element "#btnLogin" to not exist
        And   I expect that the path is "/"

    Scenario: Test if select an option and then buy now works without error
        Given I open the site "/Skechers-Skech-Air-Element-Womens-Training-Shoes-Sky-Blue-000000020317.do?cno=000000010301&mlc=0001"
        And   there is an element "#buyNowButton" on the page
        When  I click on the element ".size_box[data-optval='US 9']"
        And   I move to element "#buyNowButton"
        And   I click on the button "#buyNowButton"
        Then  I wait on element "#buyNowButton" to not exist
        And   I expect that the path is "/op/generalParcel/view.do"

    Scenario: Test if submit order works without error
        Given the path is "/op/generalParcel/view.do"
        And   there is an element "#formSubmit" on the page
        When  I click on the button "#formSubmit"
        Then  I wait on element "#formSubmit" to not exist
        And   I expect the url to contain "op/orderForm/viewCompleteOrderInfo.do"