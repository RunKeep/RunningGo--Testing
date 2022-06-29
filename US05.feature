Feature: User Registration

  Scenario: Account was created succesfully
    Given i am a user in the registration menu
    When i make a post request to this url "/api/v1/users"
    And correctly input the required data
    Then the result status should be a response of 201

  Scenario: Could not create account
    Given i am a user in the registration menu
    When i make a post request to this url "/api/v1/users"
    And incorrectly input the required data   
    Then the result status should be a bad response of 400
