package steps
import java.util
import cucumber.api.scala.{EN, ScalaDsl}
import org.openqa.selenium.{By, WebElement}
import org.scalatest._
import support.Browser
import collection.JavaConverters._

class StepDefinitions extends ScalaDsl with EN with Matchers with Browser {

  Given("""^I am on the social care compliance homepage$""") { () =>
    go to "http://localhost:8550/apply-for-social-care-compliance-scheme/capacity-registering"
    find(cssSelector("h1")).get.text shouldBe "Which of these options best describes you?"
  }

  When("""^I choose the "Someone who pays for care directly" option$""") { () =>
    click on id("capacityRegistering.personalBudgetHolderDirect")
    click on id("submit")
  }

  And("""^I enter my name as "(.+)"$""") { name: String =>
    webDriver.findElement(By.id("value")).sendKeys(name)
    webDriver.findElement(By.id("submit")).click()

  }

  And("""^I choose the "Yes" option$""") { () =>
    click on id("value-yes")
    click on id("submit")
  }

  When("""^I enter my address as "(.+)"$""") {
    table: DataTable =>table.asMaps[String, String](classOf[String], classOf[String]).asScala.foreach(row => {
      webDriver.findElement(By.name(row.get("value")))
    })


      table.asMaps[String, String](classOf[String], classOf[String]).asScala.foreach(row => {
        doSomething(row.get("Field"), row.get("Value"))
      })
  }

  And("""^I enter my phone number as "(.+)"$""") { number: String =>
    webDriver.findElement(By.id("value")).sendKeys(number)
    webDriver.findElement(By.id("submit")).click()

  }
}