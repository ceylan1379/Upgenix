@UPG10-308
Feature: Default

	#AC2- "Wrong login/password" message should be displayed for invalid credentials (valid username-invalid password )
	@UPG10-307
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