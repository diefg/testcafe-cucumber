const {Given, When, Then} = require('cucumber')
//const Selector = require('testcafe').Selector;
const {Selector, t} = require('testcafe')

Then('I click on Recetas y más and search for {string}',async function (text) {
    // Write code here that turns the phrase above into concrete actions
    await testController.click(Selector('#new_tottus_nav_cliente_recetas').find('a').with({timeout: 40000}))
    await testController.click(Selector('button').withText('ALTA').find('img'))
    var input = Selector('#search').with({boundTestRun: testController})
    await testController.typeText(input, text)

  });

Then('I click the recipe {string}',async function (string) {
    await testController.click(Selector('h3').withText('CORONA DE ROLLITOS DE CANELA'))
  });

  Then('I check if the recipe has {string} and {string}', function (string, string2) {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
  });  