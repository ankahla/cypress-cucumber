@security
Feature: Login page

  I want to be able to login to my account

  Background:
    Given I open the url: "/connexion/"
    And I click on the "button" "continuer sans accepter"
    Then I see the text "Connectez-vous ici" in the page

  @successful-login
  Scenario Outline: Sign in to my account
    When I fill in "login[email]" with <email>
    And I fill in "login[password]" with <password>
    And I click on the "label" "oui"
    And I click on the "button" "je me connecte"
    And I wait for 1 second
    Then I am redirected to the uri "/"

  Examples:
    | email                   | password    |
    | "kahla.anoir@gmail.com" | "@Ka011110" |

  @unsuccessful-login
  Scenario Outline: Checking error messages
    When I fill in "login[email]" with <email>
    And I fill in "login[password]" with <password>
    And I click on the "label" "oui"
    And I click on the "button" "je me connecte"
    And I wait for 1 second
    Then I see the text <message> in the page

  Examples:
    | email                               | password        | message                                                                                         |
    | "kahla.anoir@gmail.com"             | "Test@12345678" | "Vos identifiants n’ont pas été reconnus. Faites un nouvel essai ou changez votre mot de passe" |
    | "unknown.email@unknown.domain.com"  | "Test@12345678" | "Nous n'avons pas de compte avec cet email. Êtes-vous certain d’être déjà inscrit ?"            |






