Feature: Manage notes

  @javascript
  Scenario: List notes
    Given a note exists with author: "jay", text: "note test"
    When I go to the notes page
    And I wait for 2 minutes
    Then I should see "jay"

  @javascript
  Scenario: Add a note
    When I go to the notes page
    And I fill in "note_author" with "jay"
    And I fill in "note_text" with "more note"
    And I press "Add note"
    Then I should be on the notes page
    And I should see "more note"
    And a note should exist with text: "more note"
