Feature: Searching for Tottus sucursales by Google

  I want to find Tottus sucursales by Google search

  Scenario: Searching for Tottus Sucursales by Google
    Given I am open Google's search page
    When I am typing my search request "tottus sucursales" on Google
    Then I press the "enter" key on Google
    Then I click the Google's result "Tottus Nataniel"
