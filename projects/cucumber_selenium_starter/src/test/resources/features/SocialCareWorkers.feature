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

    When I choose the "Social care workers" option