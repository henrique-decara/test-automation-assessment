Feature: Login page

  Background:
    Given the main page is loaded

  Scenario: Validate if the user can authenticate in the application with the provided credentials

  When I type the "<username>" and "<password>"
  Then the application should redirect the user to the page Invoice List

    Examples:
      | username | password |
      | demouser |   abc123 |

  Scenario: Validate that the application denies the user login with invalid credentials

  When I type the "<username>" and "<password>"
  Then the application should show error message

    Examples:
      | username | password |
      | Demouser |   abc123 |
      | demouser_|   xyz    |
      | demouser |  nananana|
      | demouser |   abc123 |