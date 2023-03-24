@UPG10-306
Feature: Default

	#User enter *_invalid_* username and *_valid_* password
	@UPG10-304
	Scenario Outline: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enters invalid username "<username>"
		And user enters valid password "<password>"
		And user clicks login button
		Then user should see "Wrong login/password" message
		Examples:
			| username                | password     |
			| posmanager1144@info.com | posmanager   |
			| salesmanager12@ino.com  | salesmanager |
			| wrongusername@info.com  | salesmanager |
			| sklsdjodk@info.com      | posmanager   |
