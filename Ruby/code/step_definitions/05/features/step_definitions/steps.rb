#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
Given(/^I have deposited \$(\d+) in my account$/) do |amount|
  pending("Need to design the Account interface")
end
When(/^I request \$(\d+)$/) do |amount|
  pending("How do we simulate cash being requested?")
end
Then(/^\$(\d+) should be dispensed$/) do |amount|
  pending("How do we validate that cash was dispensed?")
end
