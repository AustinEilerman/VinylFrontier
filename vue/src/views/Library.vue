<template>
  <div>
    <h1>This is a list of records</h1>
    <records-list />
      <h2>Add a record to your library</h2>
      <create-record />
      
      
  </div>
</template>

<script>
import CreateRecord from '../components/CreateRecord.vue'
import RecordsList from '../components/RecordsList.vue'
export default {
  components: { CreateRecord, RecordsList },

}
</script>

<style>

</style>