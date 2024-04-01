module.exports = {
  extends: 'eslint:recommended',
  env: {
    node: true,
  },
  rules: {
      'indent': ['error', 2],
      'semi': ['error', 'never'],
      'quotes': ['error', 'single'],
      'comma-dangle': ['error', 'always-multiline'],
      'keyword-spacing': ['error', { 'before': true, 'after': true }],
      
  },
};