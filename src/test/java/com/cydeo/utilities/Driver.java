package com.cydeo.utilities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URL;
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
               case "remote-chrome":
                   // assign your grid server address
                   String gridAddress = "3.237.236.184"; // put your own Linux grid IP here
                   try {
                       URL url = new URL("http://" + gridAddress + ":4444/wd/hub");
                       DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
                       desiredCapabilities.setBrowserName("chrome");
                       driverpool.set(new RemoteWebDriver(url, desiredCapabilities));
                       driverpool.get().manage().window().maximize();
                       driverpool.get().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                   } catch (MalformedURLException e) {
                       e.printStackTrace();
                   }
                   break;
               case "chrome":
                   WebDriverManager.chromedriver().setup();
                   driverpool.set(new ChromeDriver());
                   driverpool.get().manage().window().maximize();
                   driverpool.get().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

                   break;
               case "firefox":
                   WebDriverManager.firefoxdriver().setup();
                   driverpool.set(new FirefoxDriver());
                   driverpool.get().manage().window().maximize();
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
