<template>
  <swiper
    :slidesPerView="3"
    :spaceBetween="10"
    :slidesPerGroup="3"
    :loop="false"
    :loopFillGroupWithBlank="true"
    :navigation="true"
    :modules="modules"
  >
    <swiper-slide v-for="(image, index) in images" :key="index">
      <a v-if="image.id" :href="`/trips/${image.id}`"> <img :src="image.url" class="rounded-lg h-52" /></a>
      <img v-else :src="image.url" class="rounded-lg h-52" />
    </swiper-slide>
  </swiper>
</template>

<script>
// Import Swiper Vue.js components
import { Swiper, SwiperSlide } from "swiper/vue";

// Import Swiper styles
import "swiper/css";

import "swiper/css/pagination";
import "swiper/css/navigation";

// import required modules
import { Pagination, Navigation } from "swiper";

export default {
  name: "ProfilePhotosSwiper",
  props: {
    images: Array
  },
  components: {
    Swiper,
    SwiperSlide
  },
  mounted() {
    console.log("swiper component mounted");
    console.log(123, this.images);
  },
  setup() {
    return {
      modules: [Pagination, Navigation]
    };
  }
};
</script>
