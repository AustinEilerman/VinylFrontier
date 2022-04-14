<template>
  <div class="create-collection">
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
.create-collection {
  font-size: 40;
  background-color: rgba(255,255,255,0.8);
  margin-top: 110px;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  padding-bottom: 20px;
}
</style>