module.exports = {
    "env": {
        "browser": true,
        "es2021": true,
        "node": true
    },
    "globals": {
        "Cypress": true,
        "cy": true,
        "it": true,
        "before": true,
        "beforeEach": true,
        "module": true,
    },
    "extends": "eslint:recommended",
    "parserOptions": {
        "ecmaVersion": 12,
        "sourceType": "module"
    },
    "rules": {
        "semi": [2, "always"],
        "accessor-pairs": "error",
        "array-bracket-newline": "error",
        "array-bracket-spacing": "error",
        "camelcase": "error",
        "init-declarations": "error",
        "max-classes-per-file": "error",
        "max-depth": "error",
        "max-len": "off",
        "max-lines": "error",
        "max-lines-per-function": "error",
        "max-nested-callbacks": "error",
        "max-params": "error",
        "no-console": "error",
        "no-else-return": "error",
        "no-new-wrappers": "error",
        "no-useless-return": "error",
        "prefer-const": "error",
        "require-await": "error",
        "sort-vars": "error",
        "space-before-blocks": "error",
        "vars-on-top": "error",
        "yoda": [
            "error",
            "never"
        ]
    }
};
