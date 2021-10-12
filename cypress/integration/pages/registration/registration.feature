@security
Feature: Login page

  I want to be able to sign in to my account

  Background:
    Given I open the url: "/inscription/"
    And I click on the button "continuer sans accepter"
    Then I see the text "Inscrivez-vous ici" in the page

  @successful-registration
#  Scenario Outline: Creating new account
#    When I fill in registration[email] with <email>
#    And I fill in registration[password] with <password>
#    And I fill in registration[birthDate] with <birthdate>
#    And I fill in registration[gender] with <gender>
#    And I fill in registration[postalCode] with <postalcode>
#    And I click on the "label" <newsletter>
#    And I click on the "button" "je m'inscris"
#    And I wait for 1 second
#    Then I am redirected to the uri "/"

#  Examples:
#    | email           | password      | birthdate | gender | postalcode | newsletter |
#    | "test@test.fr"  | "@Test123456" | "14051986"  | "m"  | "94230"    | "oui"      |

  @unsuccessful-login
  Scenario Outline: Checking error messages
    When I fill in registration[email] with <email>
    And I fill in registration[password] with <password>
    And I click on the label "Votre date de naissance"
    And I fill in registration[birthDate] with <birthdate>
    And I fill in registration[gender] with <gender>
    And I select <gender> in registration[gender]
    And I fill in registration[postalCode] with <postalcode>
    And I click on the label <newsletter>
    And I click on the button "je m'inscris"
    And I wait for 1 second
    Then I see the text <message> in the page

    Examples:
      | email           | password      | birthdate | gender | postalcode | newsletter | message                                                                    |
      | "test@test.fr"  | "@Test123456" | "14051986"  | "m"  | "94230"    | "oui"      | "Vous possédez déjà un compte France Télévisions avec cette adresse email" |

  Scenario Outline: Checking email field validation
    When I fill in registration[email] with <email>
    And I click on the button "je m'inscris"
    Then I see the text <message> in the page

    Examples:
      | email                 | message                                     |
      | "any text"            | "Veuillez saisir une adresse email valide." |
      | "any++address@test.fr"| "Veuillez saisir une adresse email valide." |
      | "test@voila.fr"       | "Veuillez saisir une adresse email valide." |
      | "test@gmail.fr"       | "Veuillez saisir une adresse email valide." |
