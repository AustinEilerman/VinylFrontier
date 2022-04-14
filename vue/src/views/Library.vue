<template>
  <div class="library">
    <h1>Your Library</h1>
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
.library {
  font-size: 40;
  background-color: rgba(255,255,255,0.8);
  margin-top: 110px;
  border-radius: 20px;
  display:flex;
  flex-direction: column;
  padding-bottom: 20px;
}

h1 {
  text-align: center;
}

</style>