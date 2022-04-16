<template>
  <div>
    <div class="dropdown">
      <button v-show="showForm === false" v-on:click.prevent="showForm = true">Add to Collection</button>
      <div class="dropdown-content">
        <form v-show="showForm">
          <label>Select Collection</label>
          <select>
            <option value ="Collection-1">Collection 1</option>
            <option value="Collection-2">Collection 2</option>
          </select>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
//import collectionService from '@/services/CollectionService.js';
//import recordService from '@/services/RecordService.js';

export default {
  data() {
    return {
      props: ['recordId'],
      record: {},
      showForm: false
    }
  },
  // created() {
  //   recordService.getRecord(this.recordId).then(response => {
  //     this.record = response.data;
  //   });
    }
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