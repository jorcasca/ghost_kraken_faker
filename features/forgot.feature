Feature: Forgot

@user1 @web
Scenario: Forgot failed with non-existent user
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with <email> and <password>
    And I try to remember password
    Then I expect to see in signin <error>
    Examples:
      | email | password | error |
      | "$email_1" | "$string_date_1" | "User not found" |
      | "$email_2" | "$string_date_2" | "User not found" |
      | "$email_3" | "$string_date_3" | "User not found" |
      | "$email_4" | "$string_date_4" | "User not found" |
      | "$email_5" | "$string_date_5" | "User not found" |

@user2 @web
Scenario: Forgot failed without email
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    And I try to remember password
    Then I expect to see in signin <error>
    Examples:
      | error |
      | "We need your email address to reset your password!" |

@user4 @web
Scenario Outline: Forgot failed with invalid email format
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I fill login with <email> and <password>
    And I try to remember password
    Then I expect to see in signin <error>
    Examples:
      | email | password | error |
      | "$name_1" | "$string_date_1" | "We need your email address to reset your password!" |
      | "$name_2" | "$string_date_2" | "We need your email address to reset your password!" |
      | "$name_3" | "$string_date_3" | "We need your email address to reset your password!" |
      | "$name_4" | "$string_date_4" | "We need your email address to reset your password!" |
      | "$name_5" | "$string_date_5" | "We need your email address to reset your password!" |

@user5 @web
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
      | "$email_2" | "$string_date_2" | "Too many attempts try again in an hour" |
      | "$email_3" | "$string_date_3" | "Too many attempts try again in an hour" |
      | "$email_4" | "$string_date_4" | "Too many attempts try again in an hour" |
      | "$email_5" | "$string_date_5" | "Too many attempts try again in an hour" |
