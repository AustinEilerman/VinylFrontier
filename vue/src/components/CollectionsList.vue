<template>
  <div>
      <div v-show="collection.public === true" v-for="collection in collections" v-bind:key="collection.collectionId">
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
    // method: {
    //     getAllCollections() {
    //         collectionService.getAllCollections().then(response => {
    //             if (response.status === 200) {
    //                 this.$router.push()
    //             }
    //         })
    //     }
    created() {
        collectionService.getAllCollections().then(response => {
            this.collections = response.data;
            this.$router.push("/collections");
        })
    }
}


</script>

<style>

</style>