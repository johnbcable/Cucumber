Feature: Cash withdrawal
  Scenario: Successful withdrawal from an account in credit
    Given I have $100 in my account
    When I request $20
    Then $20 should be dispensed
   
  Scenario: Transfer funds from Savings into Checking account
    Given I have deposited $10 in my Checking account
    And I have deposited $500 in my Savings account 
    When I transfer $500 from my Savings account into my Checking account 
    Then the balance of my Checking account should be $510 
    And the balance of my Savings account should be $0
    