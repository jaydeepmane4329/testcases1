# This sample code supports Appium Ruby lib core client >=5
# gem install appium_lib_core
# Then you can paste this into a file and simply run with Ruby

require 'appium_lib_core'

caps = {}
caps["platformName"] = "Android"
caps["appium:deviceName"] = "Pixel 8 API 30"
caps["appium:app"] = "D:\\APIDemos.apk"
caps["appium:ensureWebviewsHavePages"] = true
caps["appium:nativeWebScreenshot"] = true
caps["appium:newCommandTimeout"] = 3600
caps["appium:connectHardwareKeyboard"] = true

core = Appium::Core.for url: "http://localhost:4723/wd/hub", caps: caps
driver = core.start_driver

el2 = driver.find_element :accessibility_id, "Media"
el2.click

driver.quit