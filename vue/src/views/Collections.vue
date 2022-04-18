<template>
  <div class="collections">
    <h1>Your Collections</h1>
      <user-collections />
      <create-collection />

      <h2>Public Collections</h2>
      <collections-list />
      

  </div>
</template>

<script>
import CollectionsList from '../components/CollectionsList.vue'
import CreateCollection from '../components/CreateCollection.vue'
import UserCollections from '../components/UserCollections.vue'
export default {
  components: { CreateCollection, UserCollections, CollectionsList },

}
</script>

<style>
.collections {
  font-family: monospace, sans-serif;
  font-size: 40;
  background-color: rgba(255,255,255,0.8);
  margin-top: 20vh;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  padding-bottom: 20px;
}

.create-collection {
  display: flex;
  justify-content: center;
}
</style>