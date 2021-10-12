# Front Web Functional Tests
Based on [Cypress](https://github.com/cypress-io/cypress)
## Install
`npm install`
## Run tests

`npm run test`

`npm run cypress:open (GUI mode)`

## Gherkin Expressions
### WHEN / GIVEN
`I am in the homepage`

`I open the url: {string}`

`I click on the search input`

`I click on the {htmltag} {string}`

`I wait for {int} second(s)`

### THEN / AND
`I see {string} in the title`

`I see the text {string} in the page`

`I am redirected to the uri {string}`

### References
[cypress cucumber preprocessor](https://github.com/TheBrainFamily/cypress-cucumber-preprocessor)

[Cucumber Expressions](https://github.com/cucumber/cucumber-expressions)

[Cypress api](https://docs.cypress.io/api/table-of-contents)

[chai assertion](https://github.com/chaijs/chai)

