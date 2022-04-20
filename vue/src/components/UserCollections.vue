<template>
  <div class="collection-container">
      <div class="collection-display" v-for="collection in collections" v-bind:key="collection.collectionId">
          <router-link :to="{ name: 'collectionDetails', params: {collectionId: collection.collectionId }}">
              {{ collection.collectionName }}
              </router-link>
      </div>
  </div>
</template>

<script>

export default {
    props: ['collectionDetails'],
    data() {
        return {
            collections: this.$store.state.currentUserCollections,
        }
    },
}
</script>

<style>
.collection-container {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    flex-wrap: wrap;
    justify-content: space-around;
    padding: 50px;
}

.collection-display {
    border: 2px solid black;
    background-color: rgba(255,255,255,0.8);
    border-radius: 20px;
    height: 200px;
    width: 200px;
    text-align: center;
}

</style>