Feature: Bookmark articles

  Scenario: Bookmark articles
    Given app opened as unregistered user
    When search for "Watermelon"  article
    And navigate to first suggestion
    And save the page
    And open the "Saved pages" panel
    Then the bookmarked articles list should contains "Watermelon"
