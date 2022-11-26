Feature: Forgot

@user3 @web
Scenario Outline: Forgot failed with invalid email format
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with <email> and <password>
    And I try to remember password
    Then I expect to see in signin <error>
    Examples:
      | email | password | error |
      | "$name_1" | "$string_date_1" | "We need your email address to reset your password!" |

@user4 @web
Scenario Outline: Forgot failed with non-existent user many times
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with <email> and <password>
    And I try to remember password
    And I try to remember password
    And I try to remember password
    And I try to remember password
    And I try to remember password
    Then I expect to see in signin <error>
    Examples:
      | email | password | error |
      | "$email_1" | "$string_date_1" | "Too many attempts try again in an hour" |