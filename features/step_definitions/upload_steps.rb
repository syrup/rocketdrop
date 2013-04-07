Given(/^I visit the home page$/) do
  visit '/'
end

Given(/^I fill out the form$/) do
  attach_file 'download_filename', 'spec/rails-logo.jpg'
  choose 'download_single_use_true'
end

When(/^I click create download$/) do
  click_button 'Create Download'
end

Then(/^I should have a download link$/) do
  page.should have_content '/system/downloads'
end

Then(/^The application should complain$/) do
  page.should have_content "You didn't fill everything out!"
end

