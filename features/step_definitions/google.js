const {Given, When, Then} = require('cucumber');
//const Selector = require('testcafe').Selector;
const {Selector, t} = require('testcafe');
var googlePage = require('../support/pages/google-page.js');

Given('I am open Google\'s search page', async function() {
    await testController.navigateTo('https://google.com');
});

When('I am typing my search request {string} on Google',  async function(text)  {
    var input = Selector('.gLFyf').with({boundTestRun: testController});
    await this.addScreenshotToReport();
    await testController.typeText(input, text);
});

Then('I press the {string} key on Google',  async function(text)  {
    await testController.pressKey(text);
});

Then('I click the Google\'s result {string}', async function (text) {
   await googlePage.GooglePage(text,t)
});  




