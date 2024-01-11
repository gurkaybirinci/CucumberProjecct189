package techproed.hooks;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import techproed.utilities.Driver;

import java.time.Duration;

public class Hooks {

    @Before("@UI")
    public void setup(){
        Driver.getDriver().manage().window().maximize();
        Driver.getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(15));
    }

    @After("@UI")
    public void tearDown(){
        Driver.closeDriver();
    }

}
