Feature: Default

	#AC2- "Wrong login/password" message should be displayed for invalid credentials (valid username-invalid password )
	@UPG10-307
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		    When user enters valid username "<username>"
		    And user enters invalid password "<password>"
		    And user clicks login button
		    Then user should see "Wrong login/password" message