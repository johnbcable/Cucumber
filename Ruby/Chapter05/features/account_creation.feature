Feature:  Account Creation

    Scenario Outline: Password valdiation
        Given I try to create an account with password "<Password>"
        Then I should see that the pass word is <Valid or Invalid>

        Examples: Too Short
            Passwords are invalid if less than 4 characters

            | Password | Valid or Invalid |
            | abc      | invalid          |
            | ab1      | invalid          |
            | abc4     | valid            |

        Examples: Letters and Numbers
            Passwords need both letters and numbers to be valid

            | Password | Valid or Invalid |
            | abc1     | valid            |
            | abcd1    | valid            |
            | abcd     | invalid          |
