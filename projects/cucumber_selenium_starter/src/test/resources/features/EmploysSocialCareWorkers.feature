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

    When I choose the "A company that employs social care worker" option

    And I enter my name as "name"

    And I enter the name of the company employing social care workers as "Company"

    And I choose the "Yes" option

    And I enter the company address as

      | Field          | Value          |
      | address line 1 |123 Fake Street |
      | address line 2 | Fake town      |
      | postcode       |NE98 1ZZ        |

    And I enter the company telephone number as "01223456789"

    And I choose the "No" option

    And I choose the "No" option

    And  I will be shown my answers

  |Which option best describes you?
  |Your name	name
  |Company details
  |Company name
  |Is the company’s address in the UK?
  |Company’s address
  |Company’s telephone number
  |Does the company have an email address?
  |Does the company have a Unique Taxpayer Reference number?
  |Does the company have a Pay As You Earn reference number?


