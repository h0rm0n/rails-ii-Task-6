Feature: Manage posts
  In order to increase revenue!
  A post
  Should manage posts

  Scenario: Add post
    Given I saw list of all posts

    Then I visited post new page
    Then I added "test tytulu" "test tresci" post

    When I go to the list of all posts
    Then I should see "test tytulu" "test tresci"
