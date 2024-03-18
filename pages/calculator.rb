class Calculator
  def initialize(driver)
    @driver = driver
  end

  def click_number(number)
    # @driver.find_element(":name", number).click
    element = findElement(:name,number)
    clickElement(element)
    # sleep 10
  end

  def click_sign(sign)
    @driver.find_element(:name, sign).click
  end
end