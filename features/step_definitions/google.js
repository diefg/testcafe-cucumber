const {Given, When, Then} = require('cucumber');
const Selector = require('testcafe').Selector;
import t  from 'testcafe';
const googlePage = require('../support/pages/google-page');

Given('I am open Google\'s search page', async function() {
    await testController.navigateTo('https://google.com');
});

When('I am typing my search request {string} on Google',  async function()  {
    var input = Selector('.gLFyf').with({boundTestRun: testController});
    await this.addScreenshotToReport();
    await testController.typeText(input, text);
});

Then('I press the {string} key on Google',  async function(text)  {
    await testController.pressKey(text);
});

Then('I should see that a Google\'s result is {string}', async function (text) {
    //var firstLink = Selector('div.dbg0pd').nth(1).find('span').with({boundTestRun: testController});
    var firstLink = Selector('span').withText(text).with({boundTestRun: testController});
    await testController.expect(firstLink.innerText).contains(text);
  });
  




