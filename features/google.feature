Feature: Searching for Tottus sucursales by Google

  I want to find Tottus sucursales by Google search

  Scenario: Checking the recipe has canela and azucar morena
    And I type my search request "tottus sucursales" on Google
    When I see the result the "Tottus Nataniel" on Google i click it
    Then I click on Recetas y más and search for "corona"
    Then I click the recipe "Corona de rollitos de canela"
    And I check if the recipe has "ázucar morena" and "canela"
