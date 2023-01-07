module.exports = {
  content: [
    "./app/views/**/*.{html,html.erb,erb}",
    "./app/views/devise/**/*.{html,html.erb,erb}",
    "./app/frontend/components/**/*.{vue,js,ts,jsx,tsx}",
    "./app/frontend/**/*.{vue,js,ts,jsx,tsx}",
    "./app/**/*.{vue,js,ts,jsx,tsx}",
    "./src/**/*.{html,js}",
    "./node_modules/tw-elements/dist/js/**/*.js"
  ],
  theme: {

    extend: {
      colors: {
        darkblue: "#091d36"
      },
      backgroundImage: {
        "hero-banner": "url('app/assets/images/landing.png')"
      }
    }
  },
  plugins: []

    extend: {}
  },
  plugins: [require("tw-elements/dist/plugin")]

};
