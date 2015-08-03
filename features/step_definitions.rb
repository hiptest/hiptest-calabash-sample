# encoding: UTF-8

require_relative 'actionwords'
World(Actionwords)

Given /^I am on welcome screen$/ do
  i_am_on_welcome_screen
end

When /^I skip welcome screen$/ do
  i_skip_welcome_screen
end

Then /^page "(.*)" is displayed$/ do |page_title|
  page_page_title_is_displayed(page_title)
end

When /^search for "(.*)"  article$/ do |topic|
  search_for_topic_article(topic)
end

And /^navigate to first suggestion$/ do
  navigate_to_first_suggestion
end

And /^open the "(.*)" panel$/ do |panel_label|
  open_the_panel_label_panel(panel_label)
end

Then /^the history list contains "(.*)" page link at index "(.*)"$/ do |page_title, index|
  the_history_list_contains_page_title_page_link_at_index_index(page_title, index)
end

And /^save the page$/ do
  save_the_page
end

Then /^the bookmarked articles list should contains "(.*)"$/ do |p1|
  the_bookmarked_articles_list_should_contains_p1(p1)
end

Given /^app opened as unregistered user$/ do
  app_opened_as_unregistered_user
end
