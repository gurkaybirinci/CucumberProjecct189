package techproed.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = "html:raporlar/CucumberRapor.html",
        features = "src/test/resources",
        glue = {"techproed/stepDefinition", "techproed/hooks"},
        tags = "@UI",
        dryRun = false
)
public class Runner {

}
