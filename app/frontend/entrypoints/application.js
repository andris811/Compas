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
  imagesArray.forEach((image) => {
    images += `<div class="image">
                <img src="${URL.createObjectURL(image)}" alt="image" class="ml-8 w-48 h-48">
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

// // Get the button
// const mybutton = document.querySelector("#btnScrollToTop");
// console.log(mybutton);
// // When the user scrolls down 20px from the top of the document, show the button
// window.onscroll = function () {
//   scrollFunction();
// };

// function scrollFunction() {
//   if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
//     mybutton.style.display = "block";
//   } else {
//     mybutton.style.display = "none";
//   }
// }
// // When the user clicks on the button, scroll to the top of the document
// mybutton.addEventListener("click", (e) => {
//   console.log(e.target.value);
//   backToTop();
// });

// function backToTop() {
//   document.body.scrollTop = 0;
//   document.documentElement.scrollTop = 0;
// }
