#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
Given(/^there is a User$/) do
  FactoryGirl.create(:user)
end

Given(/^the User has posted the message "([^"]*)"$/) do |message_text|
  expect(User.count).to eq 1
  FactoryGirl.create(:message, :content => message_text, :user => User.first)
end

When /^I visit the page for the User$/ do
  expect(User.count).to eq 1
  visit(user_path(User.first))
end
