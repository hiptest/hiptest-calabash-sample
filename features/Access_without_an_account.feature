Feature: Access without an account

  Scenario: Access without an account
    Given I am on welcome screen
    When I skip welcome screen
    Then page "Main Page" is displayed
