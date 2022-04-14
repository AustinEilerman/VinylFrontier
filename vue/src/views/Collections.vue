<template>
  <div>
      <h1> This is the collection page </h1>
      <create-collection />
      <collections-list />
      
  </div>
</template>

<script>
import CollectionsList from '../components/CollectionsList.vue'
import CreateCollection from '../components/CreateCollection.vue'
export default {
  components: { CreateCollection, CollectionsList },

}
</script>

<style>

</style>