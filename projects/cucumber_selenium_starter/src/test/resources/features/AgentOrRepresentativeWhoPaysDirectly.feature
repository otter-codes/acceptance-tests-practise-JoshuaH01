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

    When I choose the "An agent or representative of someone who pays for care directly" option

    And I enter the full name of the person who pays for care "name"

    And I choose the "Yes" option

    And I enter my address as

      | Field          | Value          |
      | address line 1 |123 Fake Street |
      | address line 2 | Fake town      |
      | postcode       |NE98 1ZZ        |

    And I enter the telephone number of the person who pays for care as "1223456789"

    And I choose the "yes" option

    And I enter the email address of the person who pays for care as "name@name.co.uk"

    And I choose the "no" option

    And I choose the "no" option

