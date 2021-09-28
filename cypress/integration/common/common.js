import {Given, When, Then} from "cypress-cucumber-preprocessor/steps";
import {SEARCH_INPUT_SELECTOR} from "./selector";

Then(`I see {string} in the title`, title => {
    cy.title().should("include", title);
});

Then(`I see the text {string} in the page`, text => {
    cy.contains(text).should('be.visible');
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

When(`I click on the {string} {string}`, (tag, label) => {
    cy.get(tag).contains(label).click()
});

Then(`I am redirected to the uri {string}`, uri => {
    cy.location('pathname').should('eq', uri)
});

When(`I wait for {int} second(s)`, delay => {
    cy.wait(parseInt(delay) * 1000);
});
