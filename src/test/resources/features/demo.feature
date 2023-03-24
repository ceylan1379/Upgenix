@UPG10-303
Feature: Default

	#As user,i should be able login on to the home page
	@UPG10-302
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