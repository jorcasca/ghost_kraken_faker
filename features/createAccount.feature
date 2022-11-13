Feature: Create account

@user1 @web
Scenario: Register failed with wrong email
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with "title" and "fullname" and "email" and "password"
    And I try to create account
    Then I expect to see in setup "Invalid Email."

@user2 @web
Scenario: Register failed with short password
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with "title" and "fullname" and "email@email.com" and "short"
    And I try to create account
    Then I expect to see in setup "Password must be at least 10 characters long."

@user3 @web
Scenario: Register failed without title
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with "" and "fullname" and "email@email.com" and "p4ssw0rd.."
    And I try to create account
    Then I expect to see in setup "Please enter a site title."

@user4 @web
Scenario: Register failed without name
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with "title" and "" and "email@email.com" and "p4ssw0rd.."
    And I try to create account
    Then I expect to see in setup "Please enter a name."

@user5 @web
Scenario: Register successful
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with "title" and "name" and "email@email.com" and "p4ssw0rd.."
    And I try to create account
    And I wait for 5 seconds
    Then I expect to be done