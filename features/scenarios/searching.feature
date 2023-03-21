Feature: Search
    As a user 
    I want to search for an information on the website
    So that I can find the information I am looking for quickly

    Background: 
        Given I am on the home page
        When I click on the serch icon
        
         
    Scenario: Search box should be visible on the homepage
    Then I should see a search box on the homepage

    
    Scenario: Hide the search box
    When I double cick the search icon
    Then the search box should not be placed on the page

    
    Scenario: Search for information related to AGI
    When I search for an information in the search box
    Then I should see information related to the information searched in the search results

    
    Scenario: Search not found
    When I search for "Lucas Roberto" in the search box
    Then I should see a message indicating that no results were found for "Lucas Roberto"


    Scenario: Search with multiple keywords
    When I search for "emprestimo financiamento" in the search box
    Then I should see search results related to both "emprestimo" and "financiamento"
