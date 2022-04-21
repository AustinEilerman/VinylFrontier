<template>
  <div class="collection-container">
      <div class="collection-display" v-bind:allCollections="collections" v-show="collection.public === true" v-for="collection in allCollections" v-bind:key="collection.collectionId">
           <router-link :to="{ name: 'collectionDetails', params: {collectionId: collection.collectionId }}">
              {{ collection.collectionName }}
              </router-link>
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
}

.collection-display {
    border: 2px solid black;
    background-color: white;
    border-radius: 20px;
    height: 25vh;
    width: 25vw;
    display: flex;
    justify-content: center;
    align-items: stretch;
    font-size: 4vh;
}

.collection-display:hover {
    border-color: white;
    background-color: black;
    color: white;
}

.collection-display > a {
    display: flex;
    align-items: center;
    text-decoration: none;
    max-width: 25vw;
    overflow-wrap: break-word;
}

.collection-display > a:hover {
    color: white;
}

</style>