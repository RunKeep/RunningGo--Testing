Feature: Goals Service

  Scenario: Get goal progress information
    Given i am a user in the goals menu
    When i make a get request to this url "/api/v1/goals"
    Then the result status should be a response of 200

  Scenario: Update goal progress in my profile
    Given i am a user in the goals menu
    When i make a put request to this url "/api/v1/goals/{id}"
    And i correctly input the required data
    Then the result status should be a response of 201
