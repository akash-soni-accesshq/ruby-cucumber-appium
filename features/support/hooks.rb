require 'allure-cucumber'


AllureCucumber.configure do |c|
  c.results_directory = "allure-results"
  c.clean_results_directory = true
  c.logging_level = Logger::WARN # Set the logging level
end


Before do
  begin
    capabilities = {
      caps: {
        platformName:'ios',
        "appium:deviceName": 'iPhone 15 Plus',
        "appium:platformVersion": '17.2',
        "appium:automationName": 'XCUITest',
        "appium:app": './app/calculator.app'
      },
      # appium_lib: {
      #   server_url: 'http://127.0.0.1:4723/wd/hub'
      # }
    }

    @driver = Appium::Driver.new(capabilities, false)
    @driver.start_driver
  rescue Exception => e
    p e.message
    p e.backtrace
  end
end

After do |scenario|
  begin
    if scenario.failed?
      screenshot_file = "screenshots/#{scenario.name.gsub(' ', '_').downcase}.png"
      @driver.screenshot(screenshot_file)
    end
    # @driver.screenshot("./screenshot.png")
    @driver.quit_driver
  
  rescue Exception => e
    p e.message
    p e.backtrace
  end
end