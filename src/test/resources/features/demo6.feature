@UPG10-315
Feature: Default

	#AC4- User should see the password in bullet signs by default while typing (like ****)
	@UPG10-314
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enters valid password "posmanager"
		Then user should see the password in bullet signs by default