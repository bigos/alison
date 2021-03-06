Feature: Authentication
  In order to manage my account
  As a registered user
  I want to log in and out

  Background:
    Given the following user exists:
      | username | password |
      | Jack     | secret   |

  Scenario: Successful login
    Given I am not logged in
    And I am on the homepage
    When I follow "login"
    And I fill in the following:
      | username | Jack   |
      | Password | secret |
    And I press "Login"
    Then I should be on the user page
    And I should see "logout"
    And I should not see "login"

  Scenario: Successful logout
    Given I am logged in as "Jack"
    And I am on the user page
    When I follow "logout"
    Then I should be on the homepage
    And I should see "login"
    And I should not see "logout"
