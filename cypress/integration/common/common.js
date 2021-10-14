import {Given, When, Then, defineParameterType} from "cypress-cucumber-preprocessor/steps";
import {SEARCH_INPUT_SELECTOR} from "./selector";

defineParameterType({
    name: 'htmltag',
    regexp: /div|label|button|link|p|input/,
    transformer: s => {
        return s;
    }
});

// When / Given

Given(`I open the url: {string}`, url => {
    const urlToVisit = Cypress.env('URL')+url;
    // aliasing visited pages
    cy.intercept(urlToVisit).as('last-visited-page');

    cy.visit(urlToVisit, { failOnStatusCode: false });
});

When(`I am in the homepage`, () => {
    cy.visit(Cypress.env('URL'));
});

When(`I click on the search input`, () => {
    cy.get(SEARCH_INPUT_SELECTOR).click();
});

When(`I click on the {htmltag} {string}`, (tag, label) => {
    cy.get(tag).contains(label).click();
});

// Then / And

Then(`I am redirected to the uri {string}`, uri => {
    cy.location('pathname').should('eq', uri);
});

When(`I wait for {int} second(s)`, delay => {
    cy.wait(parseInt(delay) * 1000);
});

Then(`the response status code should be {int}`, code => {
    cy.wait('@last-visited-page').its('response.statusCode').should('eq', code)
});

Then(`I see {string} in the title`, title => {
    cy.title().should("include", title);
});

Then(`I see the text {string} in the page`, text => {
    cy.contains(text).should('be.visible');
});
