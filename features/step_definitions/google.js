const {Given, When, Then} = require('cucumber')
//const Selector = require('testcafe').Selector;
const {Selector, t} = require('testcafe')
var {setDefaultTimeout} = require('cucumber');
var googlePage = require('../support/pages/google-page.js')

Given('I open Google\'s search page', async function() {
    await testController.navigateTo('https://google.com')
});

/*
When('I am typing my search request {string} on Google',  async function(text)  {
    var input = Selector('.gLFyf').with({boundTestRun: testController})
    await this.addScreenshotToReport()
    await testController.typeText(input, text)
    await testController.pressKey("enter")
});
*/

Given('I type my search request {string} on Google and press enter', async function (text) {
    var input = Selector('.gLFyf').with({boundTestRun: testController})
    await this.addScreenshotToReport()
    await testController.typeText(input, text)
    await testController.pressKey("enter")
  });

Then('I press the {string} key on Google',  async function(text)  {
    var elemento=await Selector('span').withText('Tottus Nataniel')
    clickSucursalIfExists(elemento)
   //implementar
});

Then('I click the Google\'s result {string}',{timeout: 60 * 1000}, async function (text) {
   await testController.wait(3000)
   await testController.click(Selector('#new_tottus_nav_cliente_recetas').find('a').with({timeout: 40000}))
   await testController.click(Selector('button').withText('ALTA').find('img'))
   var input = Selector('#search').with({boundTestRun: testController})
   await testController.typeText(input, 'corona')
   await testController.click(Selector('h3').withText('CORONA DE ROLLITOS DE CANELA'))
});  

async function clickSucursalIfExists(element){
    if(element.exists){
       await testController.click(element)
       await testController.click(Selector("#akp_uid_0").find("a"))
    }else{
        //TODO investigar como terminar el test
    }

}

