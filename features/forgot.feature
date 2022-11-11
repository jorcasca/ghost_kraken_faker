Feature: Forgot

@user1 @web
Scenario: Forgot failed with non-existent user
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with "emailNonExistent@email.com" and "p4ssw0rd.."
    And I try to remember password
    Then I expect to see "User not found."

@user2 @web
Scenario: Forgot failed without email
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with ""
    And I try to remember password
    Then I expect to see "We need your email address to reset your password!"

@user3 @web
Scenario: Forgot failed with invalid email format
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with "emailNonExistent"
    And I try to remember password
    Then I expect to see "We need your email address to reset your password!"

@user4 @web
Scenario: Forgot failed with non-existent user many times
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with "emailNonExistent@email.com"
    And I try to remember password
    And I try to remember password
    And I try to remember password
    And I try to remember password
    And I try to remember password
    Then I expect to see "Too many attempts try again in an hour"
