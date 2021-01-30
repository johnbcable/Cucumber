Given(/I have \$(100) in my account/) do |balance|
    # TODO code that puts $<balance> into Users Account goes here
end

When(/I request \$(20)/) do |withdrawalamount|
    # TODO Write code here that turns the phrase above into concrete actions
end

Then(/\$(20) should be dispensed/) do |dispensedamount|
    # TODO Write code here that turns the phrase above into concrete actions
end 

Given(/I have deposited \$(\d+) in my (\w+) account/) do |amount, account_type|
    # TODO Write code here that turns the phrase above into concrete actions
end

When(/I transfer \$(\d+) from my (\w+) account into my (\w+) account/) do |amount, origin_account, receiving_account|
    # TODO Write code here that turns the phrase above into concrete actions
end

Then('the balance of my Checking account should be ${int}') do |int|
# Then('the balance of my Checking account should be ${float}') do |float|
    pending # Write code here that turns the phrase above into concrete actions
end

Then('the balance of my Savings account should be ${int}') do |int|
# Then('the balance of my Savings account should be ${float}') do |float|
    pending # Write code here that turns the phrase above into concrete actions
end
    
    