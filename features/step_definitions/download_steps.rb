Given(/^I visit a single\-use download link$/) do
  download = FactoryGirl.create(:download)
  visit download_path(download)
end

Then(/^I should see the real download link$/) do
  page.should have_content '/system/downloads'
end

Given(/^I visit an invalid download link$/) do
  visit download_path(5)
end

Then(/^I should be redirected to the home page$/) do
  current_path.should == root_path
end
