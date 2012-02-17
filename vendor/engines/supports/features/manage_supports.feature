@supports
Feature: Supports
  In order to have supports on my website
  As an administrator
  I want to manage supports

  Background:
    Given I am a logged in refinery user
    And I have no supports

  @supports-list @list
  Scenario: Supports List
   Given I have supports titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of supports
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @supports-valid @valid
  Scenario: Create Valid Support
    When I go to the list of supports
    And I follow "Add New Support"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 support

  @supports-invalid @invalid
  Scenario: Create Invalid Support (without title)
    When I go to the list of supports
    And I follow "Add New Support"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 supports

  @supports-edit @edit
  Scenario: Edit Existing Support
    Given I have supports titled "A title"
    When I go to the list of supports
    And I follow "Edit this support" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of supports
    And I should not see "A title"

  @supports-duplicate @duplicate
  Scenario: Create Duplicate Support
    Given I only have supports titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of supports
    And I follow "Add New Support"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 supports

  @supports-delete @delete
  Scenario: Delete Support
    Given I only have supports titled UniqueTitleOne
    When I go to the list of supports
    And I follow "Remove this support forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 supports
 