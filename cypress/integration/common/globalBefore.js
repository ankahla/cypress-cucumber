before(() => {
  cy.log(
    "This will run once before all tests, you can use this to for example start up your server, if that's your thing"
  );
});

Cypress.on('uncaught:exception', (err, runnable) => {
  // returning false here prevents Cypress from
  // failing the test
  return false
})
