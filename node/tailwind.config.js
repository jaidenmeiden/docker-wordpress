module.exports = {
    mode: 'jit',// Mandatory line
    purge: [// Correctly configutation
      '**/*.php',
      '*.php',
    ],  
    darkMode: false,
    theme: {
      extend: {},
    },
    variants: {
      extend: {},
    },
    plugins: [],
  }