package com.cydeo.utilities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.concurrent.TimeUnit;

public class Driver {
    private Driver(){

    }
    static String browser;

    private static InheritableThreadLocal<WebDriver>driverpool=new InheritableThreadLocal<>();
    public static WebDriver getDriver(){
        if (driverpool.get()==null){
           String browserType=ConfigurationReader.getProperty("browser");
           switch (browserType){
               case "chrome":
                   WebDriverManager.chromedriver().setup();
                   driverpool.set(new ChromeDriver());
                   driverpool.get().manage().window().maximize();
                   break;
               case "firefox":
                   WebDriverManager.firefoxdriver().setup();
                   driverpool.set(new FirefoxDriver());
                   driverpool.get().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                   break;
           }
        }
        return driverpool.get();
    }
    public static void closeDriver(){
        if (driverpool.get()!=null){
            driverpool.get().quit();
            driverpool.remove();
        }
    }

}
