import {Given, When, Then } from "cypress-cucumber-preprocessor/steps";

When(`I fill in {string} with {string}`, (inputName, value) => {
    cy.get(`[name="${inputName}"]`).type(`{selectall}${value}`);
});
