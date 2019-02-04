module.exports = {
  parser: 'babel-eslint',
  extends: ['airbnb', 'prettier'],
  plugins: ['prettier', 'babel'],
  rules: {
    'prettier/prettier': [
      'error',
      {
        printWidth: 100,
        tabWidth: 2,
        singleQuote: true,
        trailingComma: 'all',
        arrowParens: 'always',
      },
    ],
    'max-len' : [
      2, 100
    ],
    'react/jsx-filename-extension': false,
    'import/prefer-default-export': false,
    'babel/semi': 1,
    'no-param-reassign': 0,
    'react/destructuring-assignment': 0,
  },
  globals: {
    '__DEV__': true,
    'device': false,
    'expect': false,
  }
};
