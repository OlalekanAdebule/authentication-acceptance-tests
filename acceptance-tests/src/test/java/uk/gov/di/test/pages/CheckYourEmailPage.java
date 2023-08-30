package uk.gov.di.test.pages;

import org.openqa.selenium.By;
import uk.gov.di.test.utils.SignIn;

public class CheckYourEmailPage extends SignIn {

    By emailCodeField = By.id("code");

    public void enterEmailCode(String emailCode) {
        clearFieldAndEnter(emailCodeField, emailCode);
    }

    public void enterEmailCodeAndContinue(String code) {
        enterEmailCode(code);
        findAndClickContinue();
    }

    public void requestResendOfEmailOTPCode() {
        selectLinkByText("Problems with the code?");
        selectLinkByText("send the code again");
    }

    public void waitForPage() {
        waitForPageLoad("Check your email");
    }
}
