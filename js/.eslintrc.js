module.exports = {
    "env": {
      "browser": true,
      "node": true
    },
    "extends": "airbnb",
    "parser": "babel-eslint",
    "plugins": [
        "react",
        "jsx-a11y",
        "import",
        "flowtype"
    ],
    "rules": {
      "jsx-a11y/img-has-alt": 0,
      "react/jsx-filename-extension": [1, { "extensions": [".js", ".jsx"] }],
      "class-methods-use-this": 0,
      "react/require-default-props": 0
    }
};
