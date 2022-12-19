Feature: Google can search


 Scenario: Finding mobile
    Given user  on Flipkart main page
    When user search for <product>
    And user submit 
    Then user verify <product>

 Examples:
     | product      |  
     | samsung      | 