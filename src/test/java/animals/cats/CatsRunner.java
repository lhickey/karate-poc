package animals.cats;

import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

import cucumber.api.CucumberOptions;

@RunWith(Karate.class)
@CucumberOptions(features = "classpath:animals/cats")
public class CatsRunner {

}