<template>
  <div>
    <div class="dropdown">
      <button v-show="showForm === false" v-on:click.prevent="showForm = true">
        Add to Collection
      </button>
      <div class="dropdown-content">
        <form v-show="showForm" v-on:submit.prevent="addRecordToCollection">
          <label>Select Collection</label>
          <select v-model="this.selectedCollection">
            <option v-bind:value="collection.collectionId"
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
//import recordService from '@/services/RecordService.js';

export default {

   props: ["record"],
  data() {

    return {
      collections: [],
      
      showForm: false,
      selectedCollection: -1
    };
  },
  created() {
    collectionService
      .getCollectionByUserId(this.$store.state.user.id)
      .then((response) => {
        this.collections = response.data;
      });
  },

  methods: {
    addRecordToCollection() {
      collectionService.addRecordToCollection(this.selectedCollection, this.record.recordId).then((response) => {
        if (response.status === 201) {
          alert("Record successfully added.");
          location.reload();
        }
      });
    },
  },
};
</script>

<style>
.dropdown-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 10px;
  margin-top: 10px;
}

select {
  color: black;
  font-family: monospace, sans-serif;
  background-color: white;
}
</style>