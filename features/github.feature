Feature: Searching for Tottus sucursales by Google

  I want to find Tottus sucursales by Google search

  Scenario: Searching for Tottus Sucursales by Google
    Given I am open Google's search page
    When I am typing my search request "tottus sucursales" on Google
    Then I press the "enter" key on Google
    Then I should see that a Google's result is "Tottus Nataniel"

