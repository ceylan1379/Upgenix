Feature: Default

	#User enter *_invalid_* username and *_valid_* password
	@UPG10-304
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enters invalid username "<username>"
		And user enters valid password "<password>"
		And user clicks login button
		Then user should see "Wrong login/password" message