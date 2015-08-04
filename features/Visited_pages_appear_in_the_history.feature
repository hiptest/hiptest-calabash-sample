Feature: Visited pages appear in the history

  Scenario: Visited pages appear in the history
    Given app opened as unregistered user
    When search for "watermelon"  article
    And navigate to first suggestion
    And open the "History" panel
    Then the history list contains "Watermelon" page link at index "1"
    And the history list contains "Main Page" page link at index "2"
