<template>
  <div class="create-collection">
    <button class="add-collection" v-if="(!showForm && canCreateCollection())" v-on:click.prevent="showForm = true">Add New Collection</button>
    <form class="collection-form" v-on:submit.prevent="createCollection" v-show="showForm">
      <div>
        <label for="collectionName">Collection Name:</label>
        <input type="text" required v-model="collection.collectionName" /> 
      </div>
      <div>
        <label for="isPublic">Make Public?</label>
        <input type="checkbox" v-model="collection.public" v-on:click="changePublicStatus($event)" />
      </div>
      
      <button class="submit-buttons" type="submit">Create Collection</button>
      <button class="submit-buttons" type="button" v-on:click.prevent="showForm = false">Cancel</button>
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
form > div {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 10px;
    margin-top: 10px;
  }

  .submit-buttons {
    gap: 10px;
    color: #551A8B;
    margin-left: 40px;
    margin-top: 10px;
    margin-right: 50px;
    font-family: monospace, sans-serif;
    background-color: white;
    border: 2px solid black;
    border-radius: 10px;
    padding: 10px;
    margin-right: 10px;
  }

  .add-collection {
    display: flex;
    color: #551A8B;
    margin-top: 2vh;
    font-family: monospace, sans-serif;
    background-color: white;
    border: 2px solid black;
    border-radius: 10px;
    padding: 10px;
    margin-right: 10px;
  }

  .add-collection:hover {
    background-color: black;
    color: white;
    border-color: white;
  }
  .submit-buttons:hover {
    background-color: black;
    color: white;
    border-color: white;
  }
</style>