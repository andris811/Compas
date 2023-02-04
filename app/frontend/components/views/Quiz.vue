<!-- eslint-disable vue/no-multiple-template-root -->
<!-- eslint-disable vue/require-v-for-key -->
<template>
  <div class="">
    <div class="container my-2 md:my-5 w-11/12 text-center" v-for="question in questions">
      <div class="flex flex-row">
        <div v-if="question.content === 'Where do you want to go?'" class="basis-1/3 h-screen bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/globe.jpeg')]"></div>
        <div v-if="question.content === 'How many people do you want to travel with?'" class="basis-1/3 h-screen bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/friends.jpg')]"></div>
        <div v-if="question.content === 'Do you mind having pets on this trip?'" class="basis-1/3 h-screen bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/dog.jpg')]"></div>
        <div v-if="question.content === 'What kind of vacation would you enjoy most?'" class="basis-1/3 h-screen bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/beach.jpg')]"></div>
        <div v-if="question.content === 'What kind of activities would you like to join?'" class="basis-1/3 h-screen bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/climbing.jpg')]"></div>
        <div class="basis-2/3 bg-darkblue rounded-r-xl">
          <div class="text-white text-md my-10 mx-5 md:text-xl my-20">
            <h2>{{ question.content }}</h2>
          </div>
          <!-- country -->
          <div v-if="question.content === 'Where do you want to go?'">
            <label for="countries" class="block mb-20 text-md font-medium text-white dark:text-white">Select an option</label>
            <select
              id="countries"
              class="bg-white border border-yellow-400 text-darkblue hover:bg-yellow text-lg rounded-lg focus:ring-yellow-300 focus:border-yellow-500 block w-1/2 p-2.5 dark:bg-yellow-700 dark:border-yellow-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-yellow-500 dark:focus:border-yellow-500 m-auto"
              @change="selectCountry($event)"
            >
              <option v-for="answer in question.answers">
                {{ answer }}
              </option>
            </select>
          </div>
          <!-- people -->
          <div v-if="question.content === 'How many people do you want to travel with?'">
            <div class="grid grid-cols-1 md:grid-cols-2">
              <div v-for="answer in question.answers">
                <button
                  type="button"
                  class="w-3/4 lg:my-5 sm: my-3 bg-white text-darkblue hover:bg-yellow border border-yellow-400 hover:bg-yellow focus:ring-4 focus:outline-none focus:ring-yellow-300 font-medium rounded-lg text-lg px-5 py-2.5 text-center dark:border-yellow-300 dark:text-yellow-300 dark:hover:text-white dark:hover:bg-yellow-400 dark:focus:ring-yellow-900"
                >
                  {{ answer }}
                </button>
              </div>
            </div>
          </div>
          <!-- pets -->
          <div v-if="question.content === 'Do you mind having pets on this trip?'">
            <div class="grid grid-cols-1 md:grid-cols-2">
              <div v-for="answer in question.answers">
                <button
                  type="button"
                  class="w-3/4 my-5 bg-white text-dark-blue border border-yellow-400 hover:bg-yellow focus:ring-4 focus:outline-none focus:ring-yellow-300 font-medium rounded-lg text-lg px-5 py-2.5 text-center dark:border-yellow-300 dark:text-yellow-300 dark:hover:text-white dark:hover:bg-yellow-400 dark:focus:ring-yellow-900"
                >
                  {{ answer }}
                </button>
              </div>
            </div>
          </div>
          <div v-if="question.content === 'What kind of vacation would you enjoy most?'">
            <div class="grid grid-cols-1 md:grid-cols-2">
              <div v-for="answer in question.answers">
                <button
                  type="button"
                  class="w-3/4 my-5 sm: my-3 bg-white text-darkblue border border-yellow-400 hover:bg-yellow focus:ring-4 focus:outline-none focus:ring-yellow-300 font-medium rounded-lg text-lg px-5 py-2.5 text-center dark:border-yellow-300 dark:text-yellow-300 dark:hover:text-white dark:hover:bg-yellow-400 dark:focus:ring-yellow-900"
                >
                  {{ answer }}
                </button>
              </div>
            </div>
          </div>
          <!-- activities -->
          <div v-if="question.content === 'What kind of activities would you like to join?'">
            <label for="countries" class="block mb-20 text-md font-medium text-white dark:text-white">Select an option</label>
            <select
              id="countries"
              class="bg-white border border-yellow-400 text-darkblue text-lg rounded-lg hover:bg-yellow focus:ring-yellow-300 focus:border-yellow-500 block w-1/2 p-2.5 dark:bg-yellow-700 dark:border-yellow-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-yellow-500 dark:focus:border-yellow-500 m-auto"
            >
              <option v-for="answer in question.answers">
                {{ answer }}
              </option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <div class="flex justify-end container -mt-20 mr-20">
      <button
        type="button"
        class="w-full md:w-48 focus:outline-none text-darkblue bg-yellow hover:bg-darkblue hover:text-yellow focus:ring-4 focus:ring-yellow-300 font-medium rounded-lg text-lg px-5 py-2.5 mr-2 mb-2 dark:focus:ring-yellow-900"
        @click="submit()"
      >
        Submit
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: "Quiz",
  // mounted() {
  // fetch("/questions")
  //   .then((res) => res.json())
  //   .then((data) => {
  //     console.log(data);
  //     this.questions = data;
  //   });
  // },
  data() {
    return {
      questions: [
        {
          content: "Where do you want to go?",
          answers: [
            "Afghanistan",
            "Albania",
            "Algeria",
            "Andorra",
            "Angola",
            "Anguilla",
            "Antigua &amp; Barbuda",
            "Argentina",
            "Armenia",
            "Aruba",
            "Australia",
            "Austria",
            "Azerbaijan",
            "Bahamas",
            "Bahrain",
            "Bangladesh",
            "Barbados",
            "Belarus",
            "Belgium",
            "Belize",
            "Benin",
            "Bermuda",
            "Bhutan",
            "Bolivia",
            "Bosnia &amp; Herzegovina",
            "Botswana",
            "Brazil",
            "British Virgin Islands",
            "Brunei",
            "Bulgaria",
            "Burkina Faso",
            "Burundi",
            "Cambodia",
            "Cameroon",
            "Cape Verde",
            "Cayman Islands",
            "Chad",
            "Chile",
            "China",
            "Colombia",
            "Congo",
            "Cook Islands",
            "Costa Rica",
            "Cote D'Ivoire",
            "Croatia",
            "Cruise Ship",
            "Cuba",
            "Cyprus",
            "Czech Republic",
            "Denmark",
            "Djibouti",
            "Dominica",
            "Dominican Republic",
            "Ecuador",
            "Egypt",
            "El Salvador",
            "Equatorial Guinea",
            "Estonia",
            "Ethiopia",
            "Falkland Islands",
            "Faroe Islands",
            "Fiji",
            "Finland",
            "France",
            "French Polynesia",
            "French West Indies",
            "Gabon",
            "Gambia",
            "Georgia",
            "Germany",
            "Ghana",
            "Gibraltar",
            "Greece",
            "Greenland",
            "Grenada",
            "Guam",
            "Guatemala",
            "Guernsey",
            "Guinea",
            "Guinea Bissau",
            "Guyana",
            "Haiti",
            "Honduras",
            "Hong Kong",
            "Hungary",
            "Iceland",
            "India",
            "Indonesia",
            "Iran",
            "Iraq",
            "Ireland",
            "Isle of Man",
            "Israel",
            "Italy",
            "Jamaica",
            "Japan",
            "Jersey",
            "Jordan",
            "Kazakhstan",
            "Kenya",
            "Kuwait",
            "Kyrgyz Republic",
            "Laos",
            "Latvia",
            "Lebanon",
            "Lesotho",
            "Liberia",
            "Libya",
            "Liechtenstein",
            "Lithuania",
            "Luxembourg",
            "Macau",
            "Macedonia",
            "Madagascar",
            "Malawi",
            "Malaysia",
            "Maldives",
            "Mali",
            "Malta",
            "Mauritania",
            "Mauritius",
            "Mexico",
            "Moldova",
            "Monaco",
            "Mongolia",
            "Montenegro",
            "Montserrat",
            "Morocco",
            "Mozambique",
            "Namibia",
            "Nepal",
            "Netherlands",
            "Netherlands Antilles",
            "New Caledonia",
            "New Zealand",
            "Nicaragua",
            "Niger",
            "Nigeria",
            "Norway",
            "Oman",
            "Pakistan",
            "Palestine",
            "Panama",
            "Papua New Guinea",
            "Paraguay",
            "Peru",
            "Philippines",
            "Poland",
            "Portugal",
            "Puerto Rico",
            "Qatar",
            "Reunion",
            "Romania",
            "Russia",
            "Rwanda",
            "Saint Pierre &amp; Miquelon",
            "Samoa",
            "San Marino",
            "Satellite",
            "Saudi Arabia",
            "Senegal",
            "Serbia",
            "Seychelles",
            "Sierra Leone",
            "Singapore",
            "Slovakia",
            "Slovenia",
            "South Africa",
            "South Korea",
            "Spain",
            "Sri Lanka",
            "St Kitts &amp; Nevis",
            "St Lucia",
            "St Vincent",
            "St. Lucia",
            "Sudan",
            "Suriname",
            "Swaziland",
            "Sweden",
            "Switzerland",
            "Syria",
            "Taiwan",
            "Tajikistan",
            "Tanzania",
            "Thailand",
            "Timor L'Este",
            "Togo",
            "Tonga",
            "Trinidad &amp; Tobago",
            "Tunisia",
            "Turkey",
            "Turkmenistan",
            "Turks &amp; Caicos",
            "Uganda",
            "Ukraine",
            "United Arab Emirates",
            "United Kingdom",
            "Uruguay",
            "Uzbekistan",
            "Venezuela",
            "Vietnam",
            "Virgin Islands (US)",
            "Yemen",
            "Zambia",
            "Zimbabwe"
          ]
        },
        {
          content: "How many people do you want to travel with?",
          answers: ["small circle (1-3)", "bunch (4-6)", "party (7-9)", "the more, the merrier (>10)"]
        },
        {
          content: "Do you mind having pets on this trip?",
          answers: ["Sure! Woof not?", "Absolutely not!"]
        },
        {
          content: "What kind of vacation would you enjoy most?",
          answers: ["An urban experience", "The great outdoors", "A relaxing getaway", "The wide open road", "Something more unique"]
        },
        {
          content: "What kind of activities would you like to join?",
          answers: [
            "surfing",
            "sightseeing",
            "hiking",
            "kayaking",
            "diving",
            "racing",
            "climbing",
            "skydiving",
            "party",
            "meditation",
            "volunteering",
            "wine tasting",
            "fishing",
            "theme parks",
            "convention",
            "beach",
            "sports",
            "spa",
            "music",
            "other"
          ]
        }
      ],
      country: ""
    };
  },
  methods: {
    selectCountry(e) {
      this.country = e.target.value;
    },
    submit() {
      window.location.href = `/trips?search=${this.country}&type=quiz`;
    }
  }
};
</script>
