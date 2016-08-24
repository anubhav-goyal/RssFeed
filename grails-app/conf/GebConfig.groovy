//import org.openqa.selenium.firefox.FirefoxDriver
//
//    driver = {
//        new FirefoxDriver()
//    }
//
//
//
//baseNavigatorWaiting = true
//atCheckWaiting = true

/*
import org.openqa.selenium.firefox.FirefoxDriver
import org.openqa.selenium.firefox.FirefoxProfile

driver = {
    FirefoxProfile profile = new FirefoxProfile()
    profile.setPreference("intl.accept_languages", "en-us")
    profile.setPreference("browser.download.folderList", 2)
    profile.setPreference("browser.helperApps.alwaysAsk.force", false)
    profile.setPreference("browser.download.manager.showWhenStarting", false)
    profile.setPreference("browser.download.dir", "/Users/hitenpratap/Desktop/icici/")
    profile.setPreference("browser.helperApps.neverAsk.saveToDisk", "application/vnd.ms-excel,text/csv")
    profile.setPreference("pdfjs.disabled", true)
    def driverInstance = new FirefoxDriver(profile)
    driverInstance.manage().window().maximize()
    driverInstance.manage().deleteAllCookies()
    driverInstance
}*/
import org.openqa.selenium.chrome.ChromeDriver
driver = {
    System.setProperty("webdriver.chrome.driver", "/home/anubhav/Downloads/chromedriver");
    new ChromeDriver()
}
