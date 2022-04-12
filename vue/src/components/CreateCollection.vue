<template>
  <div>
      <form v-on:submit.prevent="createCollection">
          <label for="collectionName">Collection Name </label>
          <input type="text" v-model="collection.collectionName"> <br>
          <label for="collectionUserId">Collection User ID</label>
          <input type="number" v-model="collection.collectionUserId"> <br>
          <label for="isPublic">Make Public?</label>
          <input type="checkbox" v-model="collection.isPublic"> <br>
          <button type="submit" v-on:click="createCollection()">Create Collection</button>
       </form>
          
  </div>
</template>

<script>
import collectionService from "@/services/CollectionService.js"

export default {
    data() {
        return {
            collection: {
                collectionUserId: 1,
                collectionName: '',
                public: true
            }
        }
    },
    methods: {
        createCollection() {
            const newCollection = {
                collectionId: this.collection.collectionId,
                collectionUserId: this.collection.collectionUserId,
                isPublic: this.collection.isPublic,
                collectionName: this.collection.collectionName
            }
            collectionService.createCollection(newCollection).then(response => {
                if (response.status === 201) {
                    alert('New Collection successfully created.');
                    this.$router.push('/collections');
                }
            });

        }
    }
}
</script>

<style>

</style>