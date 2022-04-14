<template>
  <div class="collection-container">
      <div class="collection-display" v-show="collection.public === true" v-for="collection in collections" v-bind:key="collection.collectionId">
          {{ collection.collectionName }}
      </div>
  </div>
</template>

<script>
import collectionService from '@/services/CollectionService.js';
export default {
    data() {
        return {
            collections: []
        }
    },
    created() {
        collectionService.getAllCollections().then(response => {
            this.collections = response.data;
            this.$router.push("/collections");
        })
    }
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
    border-radius: 20px;
    height: 200px;
    width: 200px;
    text-align: center;
}

</style>