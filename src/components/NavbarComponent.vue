<template>
  <nav class="navbar bg-light">
    <div class="container-fluid">
      <router-link to="/" class="navbar-brand">香香餅乾店</router-link>
      <router-link to="/new-page" class="nav-link">新頁面</router-link>
      <div>
        購物車
        <span class="badge rounded-pill bg-danger text-white">{{ cartList.carts.length}} </span>
      </div>
    </div>
  </nav>
</template>

<script>
import { mapState } from "pinia";
import cartStore from '../stores/cartStore.js';

export default {
  template: `<nav class="navbar bg-light">
    <div class="container-fluid">
      <span class="navbar-brand" href="#">香香餅乾店</span>
      <div>
        購物車
        <span class="badge rounded-pill bg-danger text-white">{{ cartList.carts.length}} </span>
      </div>
    </div>
  </nav>`,
  computed: {
    ...mapState(cartStore, ['cartList'])
  },
}
</script>