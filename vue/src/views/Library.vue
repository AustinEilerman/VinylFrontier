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
import recordService from '../services/RecordService.js'
export default {
  components: { CreateRecord, RecordsList},
  created() {
    recordService.getAllRecords(this.$store.state.user.id).then((response) => {
      //if code 200
      this.records = response.data;
      this.$store.commit("SET_USER_RECORDS", this.records);
    });
    this.$store.commit("SET_ACTIVE_RECORD", {});
  },
}
</script>

<style>
.library {
  font-family: monospace, sans-serif;
  font-size: 40;
  background-color: rgba(255,255,255,0.6);
  margin-top: 20vh;
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
  padding-bottom: 30px;
}

</style>