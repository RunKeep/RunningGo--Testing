Feature: Goals Service

  Scenario: Add a new goal to my profile
    Given i am a user in the goals menu
    When i make a post request to this url "/api/v1/goals"
    And i correctly input the required data
    Then the result status should be a response of 201

    Scenario: Delete a goal from my profile
    Given i am a user in the goals menu
    When i make a delete request to this url "/api/v1/goals/{id}"
    And i correctly input the required data
    Then the result status should be a response of 200
