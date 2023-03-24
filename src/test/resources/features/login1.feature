Feature: Default

	#As user,i should be able login on to the home page
	@UPG10-302
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		    When user enters valid username "<username>"
		    And user enters valid password "<password>"
		    And user clicks login button
		    Then user is on the inbox page