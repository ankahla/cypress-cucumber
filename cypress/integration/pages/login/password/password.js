import {Then, defineParameterType} from "cypress-cucumber-preprocessor/steps";

defineParameterType({
    name: 'color',
    regexp: /red|blue/,
    transformer: s => {
        return s === 'red' ? 'c-check-container__criterion--unchecked' : 'c-check-container__criterion--checked';
    }
})

defineParameterType({
    name: 'criterion',
    regexp: /.*/,
    transformer: s => {
        return cy.contains('.c-check-container__criterion', s);
    }
})

Then(`I see {criterion} criterion in {color}`, (criterion, color) => {
    criterion.should('have.class', color)
});
