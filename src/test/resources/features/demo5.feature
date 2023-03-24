@UPG10-312
Feature: Default

	#{*}AC3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	@UPG10-311
	Scenario: Login Functionality (Automation S1-ceylan)
		Given  user is on the login page
		 When User doesn't enter username and enter password: "posmanager"
		 And user clicks login button
		 Then user should see "Please fill out this field." warning message near username