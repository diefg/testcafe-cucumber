const {Selector} = require('testcafe');


exports.GooglePage = (text,t) => 
    t.click(Selector('span').withText(text))
