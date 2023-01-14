<template>
  <div class="my-10 container w-full p-5 text-center">
    <div class="flex flex-row w-auto h-max">
      <div class="basis-1/3 h-96 bg-cover bg-center rounded-l-xl bg-[url('/images/quiz/globe.jpeg')]"></div>
      <div class="basis-2/3 bg-darkblue rounded-r-xl"></div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Quiz",
  mounted() {
    console.log("quiz is mounted");
  }
};
</script>
