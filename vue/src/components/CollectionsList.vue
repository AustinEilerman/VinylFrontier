<template>
  <div class="collection-container">
      <div class="collection-display" v-show="collection.public === true" v-for="collection in allCollections" v-bind:key="collection.collectionId">
          {{ collection.collectionName }}
      </div>
  </div>
</template>

<script>
import collectionService from "@/services/CollectionService";

export default {
    data() {
        return {
            allCollections: [],
        }
    },
    created() {
        collectionService.getAllCollections().then((response) => 
            {
                this.allCollections = response.data;
                this.$store.commit('UPDATE_ALL_COLLECTIONS', this.allCollections);
            }
        )
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
    background-color: rgba(255,255,255,0.8);
    border-radius: 20px;
    height: 200px;
    width: 200px;
    text-align: center;
}

</style>