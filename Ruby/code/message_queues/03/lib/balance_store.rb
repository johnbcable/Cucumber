#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
require 'fileutils'

class BalanceStore
  def balance
    File.read('balance').to_i
  end

  def balance=(new_balance)
    File.open('balance', 'w') { |f| f.puts(new_balance) }
  end
end