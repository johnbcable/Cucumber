#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
require 'httparty'
When(/^the client requests GET (.*)$/) do |path|
  @last_response = HTTParty.get('http://localhost:9999' + path)
end

Then(/^the response should be JSON:$/) do |json|
  expect(JSON.parse(@last_response.body)).to eq JSON.parse(json)
end
