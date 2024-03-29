#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
require File.join(File.dirname(__FILE__), '..', '..', 'fruit_app')
require 'rack/test'

module AppHelper
  # Rack-Test expects the app method to return a Rack application
  def app
    FruitApp
  end
end

World(Rack::Test::Methods, AppHelper)
