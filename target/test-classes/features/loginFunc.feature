@smoke @loginFunc
Feature: Login functionality

  User Story :

  As a user, I should be able to log in so that I can land on homepage.

  Acceptance Criteria:
  AC1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)

  AC2- "Wrong login/password" message should be displayed for invalid credentials (valid username-invalid password and invalid username-valid password)

  AC3- "Please fill out this field" message should be displayed if the password or username is empty

  AC4- User should see the password in bullet signs by default while typing (like ****)

  AC5- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.


 @UPG10-302
  Scenario Outline: Verifying login functionality with valid credentials
    Given  user is on the login page
    When user enters valid username "<username>"
    And user enters valid password "<password>"
    And user clicks login button
    Then user is on the inbox page
    Examples:
      | username                | password     |
      | salesmanager41@info.com | salesmanager |
      | salesmanager88@info.com | salesmanager |
      | posmanager91@info.com   | posmanager   |
      | posmanager135@info.com  | posmanager   |

  @UPG10-304
  Scenario Outline: Verifying login functionality with invalid username
    Given  user is on the login page
    When user enters invalid username "<username>"
    And user enters valid password "<password>"
    And user clicks login button
    Then user should see "Wrong login/password" message
    Examples:
      | username                | password     |
      | posmanager1144@info.com | posmanager   |
      | salesmanager12@ino.com  | salesmanager |
      | wrongusername@info.com  | salesmanager |
      | sklsdjodk@info.com      | posmanager   |


  @UPG10-307
  Scenario Outline: Verifying login functionality with invalid password
    Given  user is on the login page
    When user enters valid username "<username>"
    And user enters invalid password "<password>"
    And user clicks login button
    Then user should see "Wrong login/password" message
    Examples:
      | username                 | password      |
      | posmanager140@info.com   | possmanagetrg |
      | salesmanager102@info.com | salessmanager |
      | salesmanager65@info.com  | jduahdbc      |
      | posmanager35@info.com    | 1hdhv5        |

  @UPG10-309
  Scenario: Verifying login functionality with empty password
    Given  user is on the login page
    When user enter username: "salasmanager72@info.com" and doesn't enter password
    And user clicks login button
    Then user should see "Please fill out this field." warning message near password

  @UPG10-311
  Scenario: Verifying login functionality with empty username
    Given  user is on the login page
    When User doesn't enter username and enter password: "posmanager"
    And user clicks login button
    Then user should see "Please fill out this field." warning message near username

  @UPG10-314
  Scenario: Verifying password is in bullet signs
    Given  user is on the login page
    When user enters valid password "posmanager"
    Then user should see the password in bullet signs by default

  @UPG10-316
  Scenario: Verifying ‘Enter’ key of the keyboard is working correctly
    Given  user is on the login page
    When user enter valid credentials(username: "posmanager152@info.com", password: "posmanager")
    And user clicks Enter button on the keyboard
    Then user is on the inbox page


