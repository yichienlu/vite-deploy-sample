<script>
import NavbarComponent from './components/NavbarComponent.vue';
export default {
  components: {
    NavbarComponent,
  }
}
</script>

<template>
  <div class="container">
    <NavbarComponent></NavbarComponent>
    
  </div>
  <div class="container">
    <router-view></router-view>
  </div>
</template>

<style lang="scss">

@import "./assets/all.scss"

</style>
