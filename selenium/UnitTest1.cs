using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Interactions;
using Tests.Extensions;

namespace selenium;

public class Tests
{
    protected IWebDriver driver;
    protected IDictionary<string, object> Vars { get; private set; }
    protected IJavaScriptExecutor js;

    [SetUp]
    public void Setup()
    {
        driver = new ChromeDriver();
        driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(2);
        js = (IJavaScriptExecutor)driver;
        Vars = new Dictionary<string, object>();
    }

    [TearDown]
    protected void TearDown()
    {
        driver.PauseXSeconds(4);
        driver.Quit();
    }

    [Test]
    public void Test1()
    {
        driver.Navigate().GoToUrl("http://localhost:3000/recipes");
        driver.Manage().Window.Size = new System.Drawing.Size(948, 1003);
        driver.FindElement(By.LinkText("New recipe")).Click();

        IWebElement nameInput = driver.FindElement(By.Id("recipe_name"));
        nameInput.SendKeys("A new recipe!");
        IWebElement descInput = driver.FindElement(By.Id("recipe_description"));
        descInput.SendKeys("A description for the recipe");

        AssertNumberOfTextareasIs(2);

        driver.FindElement(By.LinkText("New step")).Click();
        driver.PauseXSeconds(1);

        AssertNumberOfTextareasIs(4);

        driver.FindElement(By.CssSelector("[title='Remove step']")).Click();
        driver.PauseXSeconds(1);

        AssertNumberOfTextareasIs(2);
    }

    private void AssertNumberOfTextareasIs(int number) {
        int numTextareas = driver.FindElements(By.CssSelector("textarea")).Count;
        Assert.That(numTextareas, Is.EqualTo(number)); 
    }
}