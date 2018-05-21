Feature: Users who pay for their own care can register
  As a user who pays for their own care I should
  be able to provide my details and register for
  the scheme.

  Scenario: User with a UK address can register for the scheme
    Given I am on the social care compliance homepage
    When I choose the "Someone who pays for care directly" option
    And I enter my name as "name"
    And I choose the "Yes" option

  Scenario: User with a UK address can register for the scheme

    Given I am on the social care compliance homepage

    When I choose the "Someone who pays for care directly" option

    And I enter my name as "name"
    And I choose the "Yes" option
    And I enter my address as

      | Field          | Value          |
      | address line 1 |123 Fake Street |
      | address line 2 | Fake town      |
      | postcode       |NE98 1ZZ        |

    And I enter my phone number as "1223456789"

    And I choose the "No" option

    And I choose the "No" option

    And I choose the "No" option

    And  I will be shown my answers

      | Label                                           |
      | Which option best describes you?                |
      | Your name                                       |
      | Is your address in the UK?                      |
      | Your address                                    |
      | Your telephone number                           |
      | Do you have an email address?                   |
      | Do you have a Unique Taxpayer Reference number? |
      | Do you have a Pay As You Earn reference number? |