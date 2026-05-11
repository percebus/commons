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
  |  20   |  3  |  17  |
  |  8    |  8  |  0   |
  |  15   |  10 |  5   |
  |  30   |  12 |  18  |
  |  1    |  1  |  0   |
  |  100  |  50 |  50  |
  |  25   |  7  |  18  |
  |  6    |  2  |  4   |
  |  50   |  49 |  1   |
  |  9    |  4  |  5   |
