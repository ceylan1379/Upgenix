@UPG10-397
Feature: Default

	#AC2- The user can not go to the home page again by clicking the step back button after successfully logged out.
	@UPG10-396
	Scenario: Log out Functionality ( Automation S1- Ceylan)
		Given user is logged in with username "salesmanager41@info.com" password "salesmanager"
		    When user is on the inbox page
		    And user closes the tab
		    And user open web page again
		    Then user is logged out