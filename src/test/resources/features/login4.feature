Feature: Default

	#Verifying login functionality with empty password
	@UPG10-309
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		When user enter username: "posmanager54@info.com" and doesn't enter password
		And user clicks login button
		Then user should see "Please fill out this field." warning message near password