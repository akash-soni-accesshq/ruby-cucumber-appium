def findElement( key, value)
  @driver.find_element(key, value)
end

def clickElement(element)
  element.click
end