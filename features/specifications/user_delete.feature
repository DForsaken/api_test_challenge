Feature: As a external user, I want to delete and existing user

  Scenario: Delete an existing user should return 200 ok
    Given user with name "TestUserDel0111", salary "300" and age "30" is already registered
  	When user is deleted
  	Then the delete response should be 200 ok
  	And user should not be present in the db
