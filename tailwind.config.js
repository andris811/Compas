module.exports = {
  content: [
    "./app/views/**/*.{html,html.erb,erb}",
    "./app/views/devise/**/*.{html,html.erb,erb}",
    "./app/frontend/components/**/*.{vue,js,ts,jsx,tsx}",
    "./app/frontend/**/*.{vue,js,ts,jsx,tsx}",
    "./app/**/*.{vue,js,ts,jsx,tsx}",
    "./src/**/*.{html,js}",
    "./node_modules/tw-elements/dist/js/**/*.js",
    "./node_modules/flowbite/**/*.js"
  ],
  theme: {
    extend: {
      colors: {
        darkblue: "#091d36",
        yellow: "#FFD302"
      },
      backgroundImage: {
        "hero-banner": "url('app/assets/images/landing.png')"
      }
    }
  },
  plugins: [require("tw-elements/dist/plugin"), require("flowbite/plugin")]
};
