import "./main.scss";

// import { createApp } from "vue";
// // import Home from "../components/views/Home.vue";
// import Quiz from "../components/views/Quiz.vue";

// if (document.querySelector("#quiz")) {
//   const quiz = createApp(Quiz);
//   quiz.mount("#quiz");
// }

import { createApp } from "vue/dist/vue.esm-bundler";
import Home from "@/components/views/Home.vue";
import Quiz from "@/components/views/Quiz.vue";

const app = createApp();

app.component("Home", Home);
app.component("Quiz", Quiz);
app.mount("#vue");
