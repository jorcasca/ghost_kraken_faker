Feature: Log in

@user1 @web
Scenario: Login failed without email and password
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    And I try to login
    Then I expect to see in signin <error>
    Examples:
        | error |
        | "Please fill out the form to sign in." |

@user2 @web
Scenario: Login failed without email
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login without email into login <password>
    And I try to login
    Then I expect to see in signin <error>
    Examples:
        | password | error |
        | "$string_1" | "Please fill out the form to sign in." |
        | "$string_2" | "Please fill out the form to sign in." |
        | "$string_3" | "Please fill out the form to sign in." |
        | "$string_4" | "Please fill out the form to sign in." |
        | "$string_5" | "Please fill out the form to sign in." |

@user3 @web
Scenario: Login failed without password
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login without password into login <email>
    And I try to login
    Then I expect to see in signin <error>
    Examples:
        | email | error |
        | "$email_1"| "Please fill out the form to sign in." |
        | "$email_2"| "Please fill out the form to sign in." |
        | "$email_3"| "Please fill out the form to sign in." |
        | "$email_4"| "Please fill out the form to sign in." |
        | "$email_5"| "Please fill out the form to sign in." |

@user4 @web
Scenario: Login failed with invalid email format
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with <email> and <password>
    And I try to login
    Then I expect to see in signin <error>
    Examples:
        | email | password | error |
        | "$name_1" | "$string_date_1" | "Please fill out the form to sign in." |
        | "$name_2" | "$string_date_2" | "Please fill out the form to sign in." |
        | "$name_3" | "$string_date_3" | "Please fill out the form to sign in." |
        | "$name_4" | "$string_date_4" | "Please fill out the form to sign in." |
        | "$name_5" | "$string_date_5" | "Please fill out the form to sign in." |

@user5 @web
Scenario: Login failed with non-existent user
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with <email> and <password>
    And I try to login
    Then I expect to see in signin <error>
    Examples:
        | email | password | error |
        | "$email_1" | "$string_date_1" | "Too many login attempts." |
        | "$email_2" | "$string_date_2" | "Too many login attempts." |
        | "$email_3" | "$string_date_3" | "Too many login attempts." |
        | "$email_4" | "$string_date_4" | "Too many login attempts." |
        | "$email_5" | "$string_date_5" | "Too many login attempts." |
