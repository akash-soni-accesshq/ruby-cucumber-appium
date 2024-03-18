When('the user clicks on a number {string}') do |input|
  # @driver.find_element(:name, input).click
  # sleep 10
  calculator = Calculator.new(@driver)
  calculator.click_number(input)
end

When('the user clicks on {string} sign') do |input|
  calculator = Calculator.new(@driver)
  calculator.click_sign(input)
end

Given("the application is open") do
  # Write code here that turns the phrase above into concrete actions
  properties = YAML.load_file('./features/support/properties.yml')
  value = properties['testData']
  p 'Test Data value passed from yaml is ' + value
end

Then('the application output should display {string}') do |expected_output|
  # $title_value = @driver.find_element(:name, 'numberField').value
  $title_value = findElement(:name,'numberField').value
  puts 'Value is ' + $title_value
  fail unless $title_value == expected_output
end