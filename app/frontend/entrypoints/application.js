import "./main.scss";
import "tw-elements";

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
import ProfilePhotosSwiper from "@/components/views/ProfilePhotosSwiper.vue";

const app = createApp();

app.component("Home", Home);
app.component("Quiz", Quiz);
app.component("ProfilePhotosSwiper", ProfilePhotosSwiper);
app.mount("#vue");

const upload = document.querySelector("#trip_photos");
console.log(upload);
const output = document.querySelector("output");
console.log(output);
const imagesArray = [];
upload.addEventListener("click", (e) => {
  console.log(e.target.value);
  e.target.value = null;
});
upload.addEventListener("change", () => {
  const file = upload.files;
  console.log(file);
  imagesArray.push(file[0]);
  displayImages();
});
function deleteImage(index) {
  imagesArray.splice(index, 1);
  displayImages();
}
function displayImages() {
  let images = "";
  imagesArray.forEach((image, index) => {
    images += `<div class="image">
                <img src="${URL.createObjectURL(image)}" alt="image" class="grid grid-cols-2 gap-2 w-56 h-56">
                <span class="deleteImage"
                >&times;</span>
              </div>`;
  });
  const cancels = document.querySelectorAll(".deleteImage");
  console.log(cancels);
  cancels.forEach((cancel, index) => {
    cancel.addEventListener("click", () => {
      console.log(index);
      deleteImage(index);
    });
  });
  output.innerHTML = images;
}
