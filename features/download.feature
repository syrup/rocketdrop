Feature: File Download
  In order to get shared files
  I want to redeem a download link

  Scenario: Redeem a single use download
    Given I visit a single-use download link
    Then I should see the real download link

  Scenario: Trying to redeem an invalid download
    Given I visit an invalid download link
    Then I should be redirected to the home page
