Feature: Default

	#AC5- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@UPG10-316
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enter valid credentials(username: "salesmanager102@info.com", password: "salesmanager")
		And user clicks Enter button on the keyboard
		Then user is on the inbox page