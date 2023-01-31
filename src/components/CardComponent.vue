<template>
  <div class="row row-cols-3 g-3 my-3">
    <div class="col" v-for="product in sortProducts" :key="product.id">
      <div class="card">
        <img
          :src="product.imageUrl"
          class="card-img-top"
          alt="product.title"
        />
        <div class="card-body">
          <h6 class="card-title">
            {{ product.title }}
            <span class="float-end">$ {{product.price}}</span>
          </h6>
          <a href="#" class="btn btn-outline-primary w-100"
          @click.prevent="addToCart(product.id, 1)">加入購物車</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import productsStore from './productStore.js';
import cartStore from './cartStore.js';
import { mapState, mapActions } from "pinia";

export default {
  props: ["product"],
  data(){
    return {
      num: 1,
    }
  },
  computed: {
    ...mapState(productsStore, ['sortProducts']),
  },
  methods: {
    ...mapActions(cartStore, ['addToCart'])
  }
};

</script>