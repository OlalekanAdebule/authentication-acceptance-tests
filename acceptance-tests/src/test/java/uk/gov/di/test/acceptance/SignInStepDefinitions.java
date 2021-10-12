package uk.gov.di.test.acceptance;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;

public class SignInStepDefinitions {
    protected static final String SELENIUM_URL = System.getenv().get("SELENIUM_URL");
    protected static final URI IDP_URL =
            URI.create(System.getenv().getOrDefault("IDP_URL", "http://localhost:8080/"));
    protected static final URI RP_URL =
            URI.create(System.getenv().getOrDefault("RP_URL", "http://localhost:8081/"));
    protected static final URI AM_URL =
            URI.create(System.getenv().getOrDefault("AM_URL", "http://localhost:8081/"));
    protected static final int DEFAULT_PAGE_LOAD_WAIT_TIME = 20;
    protected WebDriver driver;

    protected void setupWebdriver() throws MalformedURLException {
        if (SELENIUM_URL == null) {
            FirefoxOptions firefoxOptions = new FirefoxOptions();
            driver = new FirefoxDriver(firefoxOptions);
        } else {
            ChromeOptions chromeOptions = new ChromeOptions();
            chromeOptions.setHeadless(true);
            driver = new RemoteWebDriver(new URL(SELENIUM_URL), chromeOptions);
        }
    }

    protected void closeWebdriver() {
        driver.quit();
    }

    protected void waitForPageLoad(String titleContains) {
        new WebDriverWait(driver, DEFAULT_PAGE_LOAD_WAIT_TIME)
                .until(ExpectedConditions.titleContains(titleContains));
    }
}
