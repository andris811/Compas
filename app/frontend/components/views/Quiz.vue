<!-- eslint-disable vue/no-multiple-template-root -->
<!-- eslint-disable vue/require-v-for-key -->
<template>
  <div class="my-10 container w-full p-5 text-center" v-for="question in questions">
    <div class="flex flex-row w-auto h-screen">
      <div class="basis-1/3 h-screen bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/globe.jpeg')]"></div>
      <div class="basis-2/3 bg-darkblue rounded-r-xl">
        <div class="text-white text-xl my-10">{{ question.content }}</div>
        <div v-for="answer in question.answers">
          <p>{{ answer.content }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Quiz",
  mounted() {
    fetch("/questions")
      .then((res) => res.json())
      .then((data) => (this.questions = data));
  },
  data() {
    return {
      questions: [],
      answers: []
    };
  }
};
</script>
