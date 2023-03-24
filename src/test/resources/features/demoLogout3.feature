@UPG10-399
Feature: Default

	#AC3- The user must be logged out if the user closes the open tab (all tabs if there are multiple open tabs)
	@UPG10-398
	Scenario: Log out Functionality ( Automation S1- Ceylan)
		Given user is logged in with username "salesmanager41@info.com" password "salesmanager"
		    When user clicks Log out button
		    And user clicks the step back button
		    Then user should see the message "Your Odoo session expired. Please refresh the current web page."