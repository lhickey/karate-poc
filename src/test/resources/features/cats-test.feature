Feature: integration test

  Background:
    * url 'http://localhost:8080/cats'

  Scenario: Create a cat called Billie
    Given request { name: 'Billie' }
    When method post
    Then status 200
    And match response == { id: '#uuid', name: 'Billie' }
    And def id = response.id
    
    Given path id
    When method get
    Then status 200
    And match response == { id: '#(id)', name: 'Billie' }

    Scenario: Create a cat called Bob
    Given request { name: 'Bob' }
    When method post
    Then status 200
    And match response == { id: '#uuid', name: 'Bob' }
    And def id = response.id

    Given path id
    When method get
    Then status 200
    And match response == { id: '#(id)', name: 'Bob' }