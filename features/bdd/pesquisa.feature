Feature: Search

    Background: 
        Given I am on the home page
        When I click on the lupe

    @show     
    Scenario: Show search box
    Then the search box must be shown

    @hide
    Scenario: Hide the search box
    And click on it again
    Then the search box must no be placed on the page

    @valid
    Scenario: Valid search
    And search for an information related to the agi
    Then the information related must be shown

    @notfound
    Scenario: Search not found
    And search for an information that is not on the page
    Then a message explaning the infomation was not found must be shown
