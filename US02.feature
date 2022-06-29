Feature: Habits and Routines Service

  Scenario: Visualize good habits information
    Given i am a user in the habits menu
    When i make a get request to this url "/api/v1/habits"
    Then the result status should be a response of 200

  Scenario: Could not visualize good habits information
    Given i am a user in the habits menu
    When i make a get request to this url "/api/v1/habits"
    And i had a connection issue
    Then the result status should be a bad response of 400

  Scenario: Visualize routine information
    Given i am a user in the routine menu
    When i make a get request to this url "/api/v1/routines"
    Then the result status should be a response of 200

  Scenario: Could not visualize routine information
    Given i am a user in the habits menu
    When i make a get request to this url "/api/v1/routines"
    And i had a connection issue
    Then the result status should be a bad response of 400
