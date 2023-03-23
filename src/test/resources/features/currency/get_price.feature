Feature: Test that currency service returns a price

  Background:
    * def appUrl = 'https://api.coindesk.com'
    * def appPath = 'v1/bpi/currentprice.json'

  Scenario: Request for a price is successful
    Given url appUrl
    And path appPath
    When method GET
    Then status 200
    And match response.bpi.USD != null
    And match response.bpi.GBP != null
    And match response.bpi.EUR != null
