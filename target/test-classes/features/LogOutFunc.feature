@logOutFunc
Feature: Log out functionality

  User Story :

  As a user, I should be able to log out.

  Acceptance Criteria:
  AC1- User can log out and ends up in login page.

  AC2- The user can not go to the home page again by clicking the step back button after successfully logged out.

  AC3- The user must be logged out if the user closes the open tab (all tabs if there are multiple open tabs)


  @UPG10-394
  Scenario: User can log out and ends up in login page.
    Given user is logged in with username "salesmanager41@info.com" password "salesmanager"
    When user clicks Log out button
    Then user is logged out

  @UPG10-396
  Scenario: The user must be logged out if the user closes the open tab
   Given user is logged in with username "salesmanager41@info.com" password "salesmanager"
    When user is on the inbox page
    And user closes the tab
    And user open web page again
    Then user is logged out

  @UPG10-396
  Scenario: Verifying user can not go to the home page again by clicking the step back button
    Given user is logged in with username "salesmanager41@info.com" password "salesmanager"
    When user clicks Log out button
    And user clicks the step back button
    Then user should see the message "Your Odoo session expired. Please refresh the current web page."