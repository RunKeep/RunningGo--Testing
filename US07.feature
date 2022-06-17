Feature: Food Service

  Scenario: Save information about a food
    Given i am a user in the foods menu
    When i make a post request to this url "/api/v1/foods"
    And correctly input the required data
    Then the result status should be a response of 201

  Scenario: Delete the information saved about a food
    Given i am a user in the foods menu
    When i make a delete request to this url "/api/v1/foods/{id}"
    And input specify the id of the food to be deleted
    Then the result status should be a response of 200