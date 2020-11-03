@homepage
Feature: The homepage

  I want to see logo in my homepage

  @tag-to-include
  Scenario: Opening the homepage
    When I am in the homepage
    Then I see "France tv" in the title
    And I see the text "Dans la roue du Tour" in the page
    When I click on the search input
    Then I am redirected to the uri "/recherche/"

