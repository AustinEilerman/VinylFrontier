<template>
  <div>
      <button v-show="showForm === false" v-on:click.prevent="showForm = true">Add to Collection</button>
     
  </div>
</template>

<script>
export default {
  data() {
    return {
      showForm: false
    }
  },
  
}
</script>

<style>

</style>