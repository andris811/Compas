<!-- eslint-disable vue/no-multiple-template-root -->
<!-- eslint-disable vue/require-v-for-key -->
<template>
  <div class="">
    <div class="my-3 md:my-10 container w-full text-center" v-for="question in questions">
      <div class="flex flex-row w-auto h-screen">
        <div class="basis-1/3 h-screen bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/globe.jpeg')]"></div>
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
                {{ answer.content }}
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
                  {{ answer.content }}
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
                  {{ answer.content }}
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
                  {{ answer.content }}
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
                {{ answer.content }}
              </option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <div class="flex justify-end container -mt-20">
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
  mounted() {
    fetch("/questions")
      .then((res) => res.json())
      .then((data) => {
        console.log(data);
        this.questions = data;
      });
  },
  data() {
    return {
      questions: [],
      country: ""
    };
  },
  methods: {
    selectCountry(e) {
      this.country = e.target.value;
    },
    submit() {
      window.location.href = `/trips?search=${this.country}`;
    }
  }
};
</script>
