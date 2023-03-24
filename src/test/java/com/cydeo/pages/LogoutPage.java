package com.cydeo.pages;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LogoutPage {
    public LogoutPage(){

        PageFactory.initElements(Driver.getDriver(),this);
    }
    @FindBy(id = "login")
    public WebElement inputUsername;

    @FindBy(id = "password")
    public WebElement inputPassword;

    @FindBy(xpath = "//button[@type='submit']")
    public WebElement clickLoginButton;

    @FindBy(xpath = "//span[@class='oe_topbar_name']")
    public WebElement clickUsername;

    @FindBy(xpath = "//a[@data-menu='logout']")
    public WebElement clickLogOutButton;

    @FindBy(xpath = "//div[@class='o_dialog_warning modal-body']")
    public WebElement messageOfBackStep;

}
