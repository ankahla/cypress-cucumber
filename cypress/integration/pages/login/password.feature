@security
Feature: Email field in login page

  I want to be obliged to put a correct email before submitting form

  Scenario: Closing dedomi popup
    Given I open the url: "/connexion/"
    And I click on the "button" "continuer sans accepter"

  Scenario Outline: Checking password field validation
    When I fill in "login[password]" with <password>
    And I click on the "button" "je me connecte"
    Then I see the text <message> in the page

    Examples:
      | password    | message                                                                                                                                       |
      | ""          | "Cette information est obligatoire."                                                                                                          |
      | "any text"  | "Par précaution, votre mot de passe doit comporter un minimum de 8 caractères dont 1 majuscule, 1 minuscule, 1 chiffre, 1 caractère spécial." |

  Scenario Outline: Checking password criterion indications
    When I fill in "login[password]" with <password>
    Then I see 8 caractères criterion in <8 caractères>
    Then I see 1 chiffre criterion in <1 chiffre>
    Then I see 1 majuscule criterion in <1 majuscule>
    Then I see 1 minuscule criterion in <1 miniscule>
    Then I see 1 caractère spécial criterion in <1 caractère spécial>

    Examples:
      | 8 caractères  | 1 chiffre  | 1 majuscule  | 1 miniscule | 1 caractère spécial  | password   |
      | red           | red        | red          | blue        | red                  | "x"        |
      | red           | red        | blue         | red         | red                  | "A"        |
      | red           | red        | blue         | blue        | red                  | "Ab"       |
      | red           | red        | blue         | blue        | blue                 | "Ab@"      |
      | blue          | blue       | red          | red         | red                  | "12345678" |
      | blue          | red        | blue         | blue       | blue                  | "Ab@abcde" |
      | blue          | blue       | blue         | blue        | blue                 | "Ab@45678" |
