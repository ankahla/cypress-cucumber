@security
Feature: Email field in login page

  I want to be obliged to put a correct email before submitting form

  Scenario: Closing dedomi popup
    Given I open the url: "/connexion/"
    And I click on the button "continuer sans accepter"

  Scenario Outline: Checking email field validation
    When I fill in login[email] with <email>
    And I click on the button "je me connecte"
    Then I see the text <message> in the page

    Examples:
      | email                 | message                                     |
      | ""                    | "Cette information est obligatoire."        |
      | "any text"            | "Veuillez saisir une adresse email valide." |
      | "any++address@test.fr"| "Veuillez saisir une adresse email valide." |
      | "test@voila.fr"       | "Veuillez saisir une adresse email valide." |
      | "test@gmail.fr"       | "Veuillez saisir une adresse email valide." |
