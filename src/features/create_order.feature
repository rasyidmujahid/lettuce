Feature: Test create order
    As a user
    I want to be able to test if order created successfully

    Background:
        Given I open the site "/Skechers-Skech-Air-Element-Womens-Training-Shoes-Sky-Blue-000000020317.do?cno=000000010301&mlc=0001"

    Scenario: Test if element responds to button press
        Given there is an element "#buyNowButton" on the page
        When  I click on the button "#buyNowButton"
        Then  I expect that a alertbox is opened