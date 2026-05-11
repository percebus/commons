# SRC: https://pytest-bdd.readthedocs.io/en/stable/#step-arguments
Feature: Eat cucumbers

  Scenario: Eats 2x
    Given there are 5 cucumbers
    When I eat 3 cucumbers
    And I eat 2 cucumbers
    Then I should have 0 cucumbers


  Scenario Outline: Eats once
    Given there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers

  Examples:
  | start | eat | left |
  |  12   |  5  |  7   |
