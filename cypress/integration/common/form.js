import {When, defineParameterType} from "cypress-cucumber-preprocessor/steps";

defineParameterType({
    name: 'formElementName',
    regexp: /.*/,
    transformer: s => {
        return `[name="${s}"]`;
    }
});

When(`I fill in {formElementName} with {string}`, (selector, value) => {
    cy.get(selector).type(`{selectall}${value}`);
});

When(`I select {string} in {formElementName}`, (value, selector) => {
    cy.get(selector).select(value);
});
