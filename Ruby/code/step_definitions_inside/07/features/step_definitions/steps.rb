#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
class Account
  def deposit(amount)
    @balance = amount
  end

  def balance
    @balance
  end
end

CAPTURE_A_NUMBER = Transform(/^\d+$/) do |number|
  number.to_i
end

Given(/^I have deposited \$(#{CAPTURE_A_NUMBER}) in my account$/) do |amount|
  my_account = Account.new
  my_account.deposit(amount)
  expect(my_account.balance).to eq(amount),
    "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When(/^I request \$(\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^\$(\d+) should be dispensed$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
