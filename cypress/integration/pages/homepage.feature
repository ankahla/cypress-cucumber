@homepage
Feature: The homepage

  I want to see the homepage without trouble

  Background:
    Given I am in the homepage
    And I click on the "button" "continuer sans accepter"

  @tag-to-include
  Scenario: Opening the homepage
    When I am in the homepage
    Then I see "France tv" in the title
    When I click on the search input
    And I wait for 1 second
    Then I am redirected to the uri "/recherche/"
