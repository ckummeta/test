Given(/^I visit Which\? Television page$/) do
  load_tv_home_page
  assert_tv_home_page_loaded
end

When(/^I click on Best Buys link$/) do
  click_best_buys_link
end

Then(/^Best Buys page is displayed$/) do
  assert_best_buys_page_displayed
end

When(/^I click on Advice Guides link$/) do
  click_advice_guides_link
end

Then(/^Advice guides page is displayed$/) do
  assert_advice_guides_page_displayed
end

Given(/^there is more than one Television listing pages$/) do
  verify_more_than_one_tv_pages_available
end


When(/^I click on next page$/) do
  click_on_next_page
end


Then(/^next page should be displayed$/) do
  assert_next_tv_list_page_displayed
end

Given(/^there are Televisions listed$/) do
  verify_tv_reviews_available_on_home_page
end

When(/^I click on a Television$/) do
  click_on_a_tv
end


Then(/^Product summary review page should be displayed$/) do
  assert_tv_review_summary_page_displayed
end

When(/^I click on Add to compare link under a Television$/) do
  add_a_tv_for_compare

end

Then(/^selected Television is added to product compare section$/) do
  assert_tv_added_for_compare
end

Then(/^following sort options are available$/) do |table|
end