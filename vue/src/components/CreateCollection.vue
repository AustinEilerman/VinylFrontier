<template>
  <div>
    <form v-on:submit.prevent="createCollection">
      <label for="collectionName">Collection Name </label>
      <input type="text" v-model="collection.collectionName" /> <br />
      <label for="isPublic">Make Public?</label>
      <input type="checkbox" v-model="collection.public" v-on:change="collection.public = !collection.public" /> <br />
      <button type="submit"  >
        Create Collection
      </button>
    </form>
  </div>
</template>

<script>
import collectionService from "@/services/CollectionService.js";

export default {
    props: {
        // get user ID from current user
    },

  data() {
    return {
      collection: {
        collectionUserId: 1,
        collectionName: "",
        public: false,
      },
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