Feature: Calculator

@basic
Scenario: The user open calculator and click on button
  Given the application is open
  When the user clicks on a number "3"
  Then the application output should display "3"


Scenario Outline: The user add two number
  Given the application is open
  When the user clicks on a number "<first>"
  And the user clicks on "+" sign
  And the user clicks on a number "<second>"
  And the user clicks on "=" sign
  Then the application output should display "<result>"

  Examples:
    | first | second | result |
    | 4     | 5      | 9      |
    | 5     | 5      | 10     |