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

    When I choose the "An agent or representative of a company that employs social care workers" option

    And I enter the name of the company employing social care workers as "Company"

    And I choose the "yes" option

    And I enter the company address as

      | Field          | Value          |
      | address line 1 |123 Fake Street |
      | address line 2 | Fake town      |
      | postcode       |NE98 1ZZ        |

    And I choose the "No" option

    And I choose the "No" option