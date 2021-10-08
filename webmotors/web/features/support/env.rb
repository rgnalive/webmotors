require 'cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'httparty'
require 'pry'

#URLs do ambiente
$url_web = 'https://www.webmotors.com.br/'
$url_api = 'https://desafioonline.webmotors.com.br/api/'

#Driver
Selenium::WebDriver::Chrome::Service.driver_path = "C:/chrome_driver/chromedriver.exe"
$driver = Selenium::WebDriver.for :chrome
$driver.manage.window.maximize