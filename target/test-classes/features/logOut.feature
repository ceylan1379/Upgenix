@UPG10-395
Feature: Default

	#AC1- User can log out and ends up in login page.
	@UPG10-394
	Scenario: Log out Functionality ( Automation S1- Ceylan)
		Given user is logged in with username "salesmanager41@info.com" password "salesmanager"
		    When user clicks Log out button
		    Then user is logged out