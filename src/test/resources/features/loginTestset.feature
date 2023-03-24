@logTestset
Feature: Login functionality

	#As user,i should be able login on to the home page
	@UPG10-302 @UPG10-404
	Scenario Outline: Login Functionality (Automation S1-ceylan)
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

	#User enter *_invalid_* username and *_valid_* password
	@UPG10-304 @UPG10-404
	Scenario Outline: Login Functionality (Automation S1-ceylan)
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

	#AC2- "Wrong login/password" message should be displayed for invalid credentials (valid username-invalid password )
	@UPG10-307 @UPG10-404
	Scenario Outline: Login Functionality (Automation S1-ceylan)
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

	#Verifying login functionality with empty password
	@UPG10-309 @UPG10-404
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enter username: "posmanager54@info.com" and doesn't enter password
		And user clicks login button
		Then user should see "Please fill out this field." warning message near password	

	#{*}AC3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	@UPG10-311 @UPG10-404
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		 When User doesn't enter username and enter password: "posmanager"
		 And user clicks login button
		 Then user should see "Please fill out this field." warning message near username	

	#AC4- User should see the password in bullet signs by default while typing (like ****)
	@UPG10-314 @UPG10-404
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enters valid password "posmanager"
		Then user should see the password in bullet signs by default	

	#AC5- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@UPG10-316 @UPG10-404
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enter valid credentials(username: "salesmanager102@info.com", password: "salesmanager")
		And user clicks Enter button on the keyboard
		Then user is on the inbox page