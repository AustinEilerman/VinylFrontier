<template>
  <div class="library">
    <h1>Your Library</h1>
    <records-list />
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
  font-family: monospace, sans-serif;
  font-size: 40;
  background-color: rgba(255,255,255,0.8);
  margin-top: 19vh;
  border-radius: 20px;
  display:flex;
  flex-direction: column;
  padding-bottom: 20px;
}

h1 {
  font-family: monospace, sans-serif;
  text-align: center;
}

.create-record {
  display: flex;
  justify-content: center;
  align-items:center;

}
</style>