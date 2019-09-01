Feature: As a external user, I want to add a new user

  Scenario: Register user and get user should return 200 ok
    Given user with name "TestUserReg00012", salary "300" and age "30" is not registered
    When user is created
    Then the create response should be 200 ok
    And user should be present in the db