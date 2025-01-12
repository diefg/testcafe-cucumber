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

Given('I type my search request {string} on Google', async function (text) {
    var input = Selector('.gLFyf').with({boundTestRun: testController})
    await this.addScreenshotToReport()
    await testController.typeText(input, text)
    await testController.pressKey("enter")
  });

When('I see the result the {string} on Google i click it', async function (text) {
    var elemento=await Selector('span').withText('Tottus Nataniel')
    clickSucursalIfExists(elemento) 
   await testController.wait(5000)
});  

async function clickSucursalIfExists(element){
    if(element.exists){
       await testController.click(element)
       await testController.click(Selector("#akp_uid_0").find("a"))
    }else{
        //TODO investigar como terminar el test
    }

}

