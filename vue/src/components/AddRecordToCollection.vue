<template>
  <div v-if="record.userId == this.$store.state.user.id">
    <div class="dropdown">
      <button
        id="add-to-collection"
        v-show="showForm === false"
        v-on:click.prevent="showForm = true"
      >
        Add to Collection
      </button>
      <div class="dropdown-content">
        <form v-show="showForm" v-on:submit.prevent="addToCollection">
          <label>Select Collection</label>
          <select v-model="selectedCollectionId">
            <option
              v-bind:value="collection.collectionId"
              v-for="collection in collections"
              v-bind:key="collection.collectionId"
            >
              {{ collection.collectionName }}
            </option>
          </select>
          <button type="submit">Add to Collection</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import collectionService from "@/services/CollectionService.js";

export default {
  props: ["record"],
  data() {
    return {
      collections: this.$store.state.currentUserCollections,
      records: this.$store.state.currentUserRecords,
      showForm: false,
      selectedCollectionId: -1,
      errorMsg: ""
    };
  },
  methods: {
    addToCollection() {
      collectionService
        .addRecordToCollection(this.selectedCollectionId, this.record)
        .then((response) => {
          if (response.status === 201) {
            alert("Record successfully added to collection.");
            this.$router.push(`/collections/${this.selectedCollectionId}/records`);
          }
        })
         .catch(error => {
          if (error.response && error.response.status === 500) {
            alert(
              "Error: Collection already contains record, you cannot add it again!"
            );
            this.$router.push(`/collections/${this.selectedCollectionId}/records`);
          }
        });
    },
  },
};
</script>

<style>
.dropdown {
  display: flex;
  flex-direction: column;
}

.dropdown-content {
  display: flex;
  flex-direction: column;
}

select {
  color: black;
  font-family: monospace, sans-serif;
  background-color: white;
}

#add-to-collection {
  display: flex;
  justify-content: center;
}
</style>