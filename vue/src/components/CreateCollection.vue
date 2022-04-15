<template>
  <div class="create-collection">
    <button v-show="showForm === false" v-on:click.prevent="showForm = true">Add New Collection</button>
    <form class="collection-form" v-on:submit.prevent="createCollection" v-show="showForm">
      <div>
        <label for="collectionName">Collection Name:</label>
        <input type="text" required v-model="collection.collectionName" /> 
      </div>
      <div>
        <label for="isPublic">Make Public?</label>
        <input type="checkbox" v-model="collection.public" v-on:click="changePublicStatus($event)" />
      </div>
      
      <button type="submit">Create Collection</button>
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
      showForm: false
    };
  },
  methods: {
    createCollection() {
      this.collection.collectionUserId = this.$store.state.user.id;
      collectionService.createCollection(this.collection).then((response) => {
        if (response.status === 201) {
          alert("New Collection successfully created.");
          this.$router.push("/collections");
        }
      });
    },
    changePublicStatus(click) {
      if (click.target.checked) {
        this.collection.public = !this.collection.public;
      }
    }
  },
  created() {
    collectionService.getCollection(this.collectionId).then((response) => {
      if (response.status === 200) {
        alert("Retrieved collection.");
        this.$router.push(`/collections/${this.collectionId}`);
      }
    });
  },
};
</script>

<style>
</style>