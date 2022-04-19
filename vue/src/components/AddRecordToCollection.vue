<template>
  <div>
    <div class="dropdown">
      <button id="add-to-collection" v-show="showForm === false" v-on:click.prevent="showForm = true">
        Add to Collection
      </button>
      <div class="dropdown-content">
        <form v-show="showForm" v-on:submit.prevent="addRecordToCollection">
          <label>Select Collection</label>
          <select v-model="selectedCollection">
            <option v-bind:value="collection.collectionId"
              v-for="collection in collections"
              v-bind:key="collection.collectionId">
              {{ collection.collectionName }}
            </option>
          </select>
          <button type="submit" >Add Collection</button>
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
      selectedCollectionId: -1
    };
  },
  methods: {
    addRecordToCollection() {
      collectionService.addRecordToCollection(this.selectedCollectionId, this.record.recordId).then((response) => {
        if (response.status === 201) {
          alert("Record successfully added to collection.");
          location.reload();
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
}

select {
  color: white;
  font-family: monospace, sans-serif;
  background-color: black;
}

#add-to-collection {
  display: flex;
  justify-content: center;
}
</style>