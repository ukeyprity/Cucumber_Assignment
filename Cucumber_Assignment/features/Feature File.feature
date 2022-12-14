Feature: Flipkart Search using cucumberframework

    Feature Description:
    As a user
    Should be  able to Search product and verify the results for the same



Scenario: Search
        Given user on amazon site
        When user enters the search
        And hit enter
        Then user navigates to search result page
