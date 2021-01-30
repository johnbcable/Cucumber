Given(/^I have authenticated with the correct PIN$/) do
    steps %{
        And I have pushed my card into the slot 
        And I enter my PIN
        And I press "OK"
    }
  end