require 'appium_lib'
require './pages/calculator'
# capabilities = {
#   caps: {
#     platformName:'ios',
#     "appium:deviceName": 'iPhone 15 Plus',
#     "appium:platformVersion": '17.2',
#     "appium:automationName": 'XCUITest',
#     "appium:app": '/Users/akashsoni/Desktop/autotest/ruby-appium-cucumber/calculator.app'
#   }
# }

# begin
#   driver = Appium::Driver.new(capabilities, false)
#   driver.start_driver
# rescue Exception => e
#   p e.message
#   p e.backtrace
# end
# TEST_PARAM = ENV['TEST_PARAM']
# puts 'Test Param Value is ' + TEST_PARAM