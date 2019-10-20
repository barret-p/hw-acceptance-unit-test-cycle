Feature: Add and delete movies from list
  As a movie goer
  So that I can modify the movie list
  I want to be able to add or delete movies from the list

Background:
  Given the following movies exist:
    | title        | rating | director     | release_date |
    | Star Wars    | PG     | George Lucas |   1977-05-25 |
    | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
    | Alien        | R      |              |   1979-05-25 |
    | THX-1138     | R      | George Lucas |   1971-03-11 |

  Scenario: delete movie
    Given I am on the details page for "Alien"
    And  I press "Delete"
    Then  I should be on the RottenPotatoes home page
    And   I should see "Movie 'Alien' deleted."

  Scenario: add movie
    Given I am on the RottenPotatoes home page
    And  I follow "Add new movie"
    Then I should be on the new movie page
    When I fill in "Title" with "The Infiltrator"
    And I select "R" from "Rating"
  # And I select "2016-07-15" from "Release On"
    And I press "Save Changes"
    Then I should be on the RottenPotatoes home page
    And I should see "The Infiltrator was successfully created."
