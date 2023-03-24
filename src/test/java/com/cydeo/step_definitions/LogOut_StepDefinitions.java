package com.cydeo.step_definitions;

import com.cydeo.pages.LogoutPage;
import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;

public class LogOut_StepDefinitions {
    WebDriver driver = Driver.getDriver();

    LogoutPage logoutPage = new LogoutPage();
    Actions actions = new Actions(driver);

    @Given("user is logged in with username {string} password {string}")
    public void user_is_logged_in_with_username_password(String username, String password) {
        driver.get(ConfigurationReader.getProperty("url"));
        logoutPage.inputUsername.sendKeys(username);
        logoutPage.inputPassword.sendKeys(password);
        logoutPage.clickLoginButton.click();

    }

    @When("user clicks Log out button")
    public void user_clicks_log_out_button() {
        BrowserUtils.sleep(2);
        logoutPage.clickUsername.click();
        logoutPage.clickLogOutButton.click();

    }

    @Then("user is logged out")
    public void user_is_logged_out() {
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains("qa.upgenix.net"));

    }
    @When("user closes the tab")
    public void user_closes_the_tab() {
        actions.keyDown(Keys.CONTROL).sendKeys("w").keyUp(Keys.CONTROL);

    }
    @When("user open web page again")
    public void user_open_web_page_again() {
        driver.get(ConfigurationReader.getProperty("url"));

    }
    @When("user clicks the step back button")
    public void user_clicks_the_step_back_button() {
        driver.navigate().back();

    }

    @Then("user should see the message {string}")
    public void user_should_see_the_message(String expectedMassage) {
        String actualMessage = logoutPage.message.getText();
        Assert.assertEquals(expectedMassage,actualMessage);

    }



}
