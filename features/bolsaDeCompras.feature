Feature: Shopping bag
  I want to check my Shopping bag

  Scenario: I want to add a new item to my empty bag
    Given I navigate to "www.myStore.com"
    When I click the "catalogo de productos" button
    And I see the grid of products available
    Then I click "añadir a la bolsa" on the first product
    Then I see the message "producto añadido correctamente"
    And the bag icon get updated with an "+1"

  Scenario: I want to add a new item to my bag with products already in it
    Given I navigate to "www.myStore.com"
    When I click the "catalogo de productos" button
    And I see the grid of products available
    Then I click "añadir al carro" on any product thats not in the bag
    Then I see the message "producto añadido correctamente"
    And the bag icon number gets updated and it sums "1" to the amount of products in it

  Scenario: I want to add a new item with no stock to my bag
    Given I navigate to "www.myStore.com"
    When I click the "catalogo de productos" button
    And I see the grid of products available
    Then I click "añadir a la bolsa" on a product with no stock
    But I see that the button is disabled
    Then I see that the Shopping bag icon is not updated

  Scenario: I want to see the behavior of the bag with more than 10 items 
    Given I navigate to "www.myStore.com"
    When I click the "catalogo de productos" button
    And I see the grid of products available
    Then I click "añadir a la bolsa" on a 20 products
    Then I see that the Shopping bag icon displays "10+"
    And it wont sum more items to the icon
    But keeps adding items to the bag

  Scenario: I want to see all items in my bag
    Given I am on "www.myStore.com" website with items in my bag
    When I click the "Bolsa de compras" icon
    Then I see all the items added to my bag 


  Scenario: I want to remove an item from my bag
    Given I am on "www.myStore.com" website with items in my bag
    When I click the "Bolsa de compras" icon
    Then I see all the items added to my bag 
    And I click the "-" icon on any item on the bag
    Then I see the item removed from the list

  Scenario: I want to pay the items in my bag
    Given I am autenticated on "www.myStore.com" website with items in my bag
    When I click the "Bolsa de compras" icon
    Then I see all the items added to my bag 
    And I click the "Pagar" button
    Then I get prompted with the payment options

   Scenario: I want to pay the items in my bag without loggin in
    Given I am on "www.myStore.com" website with items in my bag
    When I click the "Bolsa de compras" icon
    Then I see all the items added to my bag 
    And I click the "Pagar" button
    Then I get prompted to autenticate before i continue the process

  Scenario: I want to check the sums of items on the bag
    Given I am on "www.myStore.com" website with items in my bag
    When I click the "Bolsa de compras" icon
    Then I see all the items added to my bag 
    Then I see the label "Cantidad de productos:XX"
    And It matches the amount of products added in the list

  Scenario: I want to check the total balance to pay
    Given I am on "www.myStore.com" website with items in my bag
    When I click the "Bolsa de compras" icon
    Then I see all the items added to my bag 
    Then I see the label "Total a pagar:999.999.999"
    And It matches the amount of the sum of the prices in the products list

  Scenario: I click the Shopping bag icon without items in it
    Given I am on "www.myStore.com" with my bag empty
    When I click the "Bolsa de compras" icon
    Then I see the message "No tienes nada en tu bolsa, click aquí para ver nuestro catalogo"
    And I click the link to the products catalogue
    Then I see the products catalogue

