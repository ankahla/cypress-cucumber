import {Given, When, Then} from "cypress-cucumber-preprocessor/steps";

const SEARCH_INPUT_SELECTOR = ".c-primary-nav-search";

Then(`I see {string} in the title`, title => {
    cy.title().should("include", title);
});

Then(`I see the text {string} in the page`, text => {
    cy.get('body').should('contain.text', text);
});

Given(`I open the url: {string}`, url => {
    cy.visit(Cypress.env('URL')+url);
});

When(`I am in the homepage`, () => {
    cy.visit(Cypress.env('URL'));
});

When(`I click on the search input`, () => {
    cy.get(SEARCH_INPUT_SELECTOR).click();
});

Then(`I am redirected to the uri {string}`, uri => {
    cy.location('pathname').should('eq', uri)
});
