Feature: File Upload
  In order to share random files
  I want to be given a download link

  Scenario: Create a single use download
    Given I visit the home page
    And I fill out the form
    And I click create download
    Then I should have a download link

  Scenario: Try to upload nothing
    Given I visit the home page
    And I click create download
    Then The application should complain
