<template>
  <div class="collection-container">
      <div class="collection-display" v-bind:allCollections="collections" v-show="collection.public === true" v-for="collection in allCollections" v-bind:key="collection.collectionId">
           <router-link :to="{ name: 'collectionDetails', params: {collectionId: collection.collectionId }}">
              {{ collection.collectionName }}
              </router-link>
      </div>
            <router-link v-if="record" :to="{ name: 'recordDetails', params: {id: record.recordId}}">
              <h1>{{ record.title }}</h1>
              <p>Artist: {{ record.artist }}</p>
              <p>Genre: {{ record.genre }}</p>
            </router-link>
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