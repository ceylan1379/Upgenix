package com.cydeo.step_definitions;

import com.cydeo.pages.LoginPage;
import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;

public class Login_StepDefinitions {
    WebDriver driver=Driver.getDriver();
    LoginPage loginPage=new LoginPage();
    Actions actions=new Actions(driver);

    @Given("user is on the login page")
    public void user_is_on_the_login_page() {
        driver.get(ConfigurationReader.getProperty("url"));


    }
    @When("user enters valid username {string}")
    public void user_enters_valid_username(String username) {
        loginPage.usernameInput.sendKeys(username);



    }
    @When("user enters valid password {string}")
    public void user_enters_valid_password(String password) {
        loginPage.passwordInput.sendKeys(password);

    }
    @When("user clicks login button")
    public void user_clicks_login_button() {
        loginPage.clickLogInButton.click();

    }
    @Then("user is on the inbox page")
    public void user_is_on_the_inbox_page() {
        String expectedTitle="Odoo";
        String actualTitle=Driver.getDriver().getTitle();
        Assert.assertTrue(expectedTitle.equals(actualTitle));


    }
    @When("user enters invalid username {string}")
    public void user_enters_invalid_username(String username) {
        loginPage.usernameInput.sendKeys(username);

    }
    @Then("user should see {string} message")
    public void user_should_see_message(String expectedMessage) {
        String actualMessage=loginPage.wrongLoginOrPasswordMessage.getText();
        Assert.assertEquals(expectedMessage,actualMessage);

    }
    @When("user enters invalid password {string}")
    public void user_enters_invalid_password(String password) {
        loginPage.passwordInput.sendKeys(password);
    }
    @When("user enter username: {string} and doesn't enter password")
    public void user_enter_username_and_doesn_t_enter_password(String username) {
        loginPage.usernameInput.sendKeys(username);

    }
    @Then("user should see {string} warning message near password")
    public void user_should_see_warning_message_near_password(String expectedMessage) {
        BrowserUtils.sleep(2);
        String actualMessage = loginPage.passwordInput.getAttribute("validationMessage");
        expectedMessage = "Please fill out this field.";
        Assert.assertEquals(expectedMessage,actualMessage);
    }
    @When("User doesn't enter username and enter password: {string}")
    public void user_doesn_t_enter_username_and_enter_password(String password) {
        loginPage.passwordInput.sendKeys(password);
    }
    @Then("user should see {string} warning message near username")
    public void user_should_see_warning_message_near_username(String expectedMessage) {
        String actualMessage = loginPage.usernameInput.getAttribute("validationMessage");
        expectedMessage = "Please fill out this field.";
        Assert.assertEquals(expectedMessage,actualMessage);
    }
    @Then("user should see the password in bullet signs by default")
    public void user_should_see_the_password_in_bullet_signs_by_default() {
        Assert.assertEquals("password",loginPage.passwordInput.getAttribute("type"));
    }
    @When("user enter valid credentials\\(username: {string}, password: {string})")
    public void user_enter_valid_credentials_username_password(String username, String password) {
        loginPage.usernameInput.sendKeys(username);
        loginPage.passwordInput.sendKeys(password);

    }
    @When("user clicks Enter button on the keyboard")
    public void user_clicks_enter_button_on_the_keyboard() {
        actions.sendKeys(Keys.ENTER).perform();

    }


}





