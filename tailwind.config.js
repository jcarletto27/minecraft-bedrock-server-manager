/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./public/**/*.{html,js}",
    "./views/**/*.{html,js,ejs}",
    "./**/*.js",
    "!./node_modules/**/*.js"
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}