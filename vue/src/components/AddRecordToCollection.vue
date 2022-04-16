<template>
  <div>
      <button v-show="showForm === false" v-on:click.prevent="showForm = true">Add to Collection</button>
     
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

</style>