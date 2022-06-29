Feature: Diets Service

  Scenario: Get balanced diet information
    Given i am a user in the diets menu
    When i make a get request to this url "/api/v1/diets"
    Then the result status should be a response of 200

  Scenario: Add a diet to my profile
    Given i am a user in the diets menu
    When i make a post request to this url "/api/v1/diets"
    And i correctly input the required data
    Then the result status should be a response of 201
