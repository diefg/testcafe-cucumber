Feature: Checking my Credit card account statement

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
    Then I see the field "monto a pagar:" with the format "999.999.999"
    And the amount its equal to whats displayed on the table "x"

Scenario: I want to see the interest
    Given I log in with user "x" and password "x" into the bank portal
    When I navigate to my credit cards and click "ver estado de cuenta"
    Then I see the field "Intereses" with the format "999.999.999"
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

