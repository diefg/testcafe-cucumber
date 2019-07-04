Feature: Checking my Creddit card account statement

  I want to see my account statement in the bank web page

  Scenario: I want to see the cardholder name
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the field "A nombre de"
    And the name displayed its equal to whats displayed on the table "x"

Scenario: I want to see the card last 4 digits
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the field  "Numero de tarjeta facturada:" with the format "XXXX-XXXX-XXXX-9999"
    And the last 4 digits displayed are equal to whats displayed on the table "x"   

Scenario: I want to see the amount to pay
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the field "monto a pagar"
    And the amount its equal to whats displayed on the table "x"

Scenario: I want to see the interest
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the field "Intereses" 
    And it should match whats displayed on the table "x"    

Scenario: I want to see the cash advances amount
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the field "Avances en efectivo:" 
    And it should match whats displayed on the table "x"    

Scenario: I want to see the Payment due date
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the label "Fecha de vencimiento"
    And the date its equal to whats displayed on the table "x"

Scenario: I want to see the statement date range
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the label "Fecha de inicio de facturacion" and "Fecha fin de facturacion"
    And the dates are equal to whats displayed on the table "x"    

Scenario: I want to pay the minimun
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I check the field "Monto Facturado" and copy the minium amount
    Then I click the pagar button
    And I type the minium pay in the textbox
    Then I fill the textbox with my "x""x""x" card coordinates
    And I click the Pagar tarjeta button
    Then I see the "Monto pagado exitosamente" message on screen
