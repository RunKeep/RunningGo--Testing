Feature: Checkup Service

  Scenario: Get checkup information
    Given i am a user in the Checkup menu
    When i make a get request to this url "/api/v1/checkups"
    Then the result status should be a response of 200

  Scenario: Request a checkup 
    Given i am a user in the Checkup menu
    When i make a post request to this url "/api/v1/checkups"
    And i correctly input the required data
    Then the result status should be a response of 201
