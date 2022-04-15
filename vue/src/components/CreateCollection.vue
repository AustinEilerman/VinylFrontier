<template>
  <div>
    <button v-if="(!showForm && canCreateCollection())" v-on:click.prevent="showForm = true">Add New Collection</button>
    <form class="collection-form" v-on:submit.prevent="createCollection" v-show="showForm">
      <div>
        <label for="collectionName">Collection Name:</label>
        <input type="text" v-model="collection.collectionName" /> 
      </div>
      <div>
        <label for="isPublic">Make Public?</label>
        <input type="checkbox" v-model="collection.public" v-on:click="changePublicStatus($event)" />
      </div>
      <div>
        <button type="submit">Create Collection</button>
      </div>
    </form>
  </div>
</template>

<script>
import collectionService from "@/services/CollectionService.js";

export default {
  data() {
    return {
      collection: {
        collectionUserId: this.$store.state.user.id,
        collectionName: "",
        public: false,
      },
      showForm: false,
      collectionCounter: 0
    };
  },
  methods: {

    canCreateCollection() {
      return this.$store.state.user.authorities[0].name === 'ROLE_PREMIUM' || this.collectionCounter === 0;
    },

    createCollection() {
      this.collection.collectionUserId = this.$store.state.user.id;
      if (this.canCreateCollection) {
         collectionService.createCollection(this.collection).then((response) => {
          if (response.status === 201) {
            console.log(this.collectionCounter);
            alert("New Collection successfully created.");
            location.reload();
          }
      });
    }
    },
    changePublicStatus(click) {
      if (click.target.checked) {
        this.collection.public = !this.collection.public;
      }
    }
  },
  created() {
    collectionService.getAllCollections().then((response) => {
      if (response.status === 200) {
        this.collectionCounter = response.data.length;
      }
    });
  },
};
</script>

<style>
</style>