Feature: Create account

@user1 @web
Scenario Outline: Register failed with wrong email
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with <title> and <fullname> and <email> and <password>
    And I try to create account
    Then I expect to see in setup <error>
    Examples:
      | title | fullname | email | password | error |
      | "$string_1" | "$name_1" | "$name_1" | "$number_1" | "Invalid Email." |
      | "$string_2" | "$name_2" | "$name_2" | "$number_2" | "Invalid Email." |
      | "$string_3" | "$name_3" | "$name_3" | "$number_3" | "Invalid Email." |
      | "$string_4" | "$name_4" | "$name_4" | "$number_4" | "Invalid Email." |
      | "$string_5" | "$name_5" | "$name_5" | "$number_5" | "Invalid Email." |

@user2 @web
Scenario Outline: Register failed with short password
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with <title> and <fullname> and <email> and <password>
    And I try to create account
    Then I expect to see in setup <error>
    Examples:
      | title | fullname | email | password | error |
      | "$string_1" | "$name_1" | "$email_1" | "$name_1" | "Password must be at least 10 characters long." |
      | "$string_2" | "$name_2" | "$email_2" | "$name_2" | "Password must be at least 10 characters long." |
      | "$string_3" | "$name_3" | "$email_3" | "$name_3" | "Password must be at least 10 characters long." |
      | "$string_4" | "$name_4" | "$email_4" | "$name_4" | "Password must be at least 10 characters long." |
      | "$string_5" | "$name_5" | "$email_5" | "$name_5" | "Password must be at least 10 characters long." |

@user3 @web
Scenario Outline: Register failed without title
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register without title <fullname> and <email> and <password>
    And I try to create account
    Then I expect to see in setup <error>
    Examples:
      | fullname | email | password | error |
      | "$name_1" | "$email_1" | "$string_1" | "Please enter a site title." |
      | "$name_2" | "$email_2" | "$string_2" | "Please enter a site title." |
      | "$name_3" | "$email_3" | "$string_3" | "Please enter a site title." |
      | "$name_4" | "$email_4" | "$string_4" | "Please enter a site title." |
      | "$name_5" | "$email_5" | "$string_5" | "Please enter a site title." |

@user4 @web
Scenario Outline: Register failed without name
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register without name <title> and <email> and <password>
    And I try to create account
    Then I expect to see in setup <error>
    Examples:
      | title | email | password | error |
      | "$string_1" | "$email_1" | "$string_1" | "Please enter a name." |
      | "$string_2" | "$email_2" | "$string_2" | "Please enter a name." |
      | "$string_3" | "$email_3" | "$string_3" | "Please enter a name." |
      | "$string_4" | "$email_4" | "$string_4" | "Please enter a name." |
      | "$string_5" | "$email_5" | "$string_5" | "Please enter a name." |

@user5 @web
Scenario Outline: Register successful
    Given I navigate to page "http://localhost:2368/ghost/#/setup"
    And I wait for 5 seconds
    When I fill register with <title> and <fullname> and <email> and <password>
    And I try to create account
    And I wait for 5 seconds
    Then I expect to be done
    Examples:
      | title | fullname | email | password |
      | "$string_1" | "$name_1" | "$email_1" | "$string_date_1" |
      