<template>
  <div id="delete-record" v-if="record.userId == this.$store.state.user.id">
      <form v-on:submit.prevent="deleteRecord()">
        <button type="submit">Delete Record</button>
      </form>
  </div>
</template>

<script>
import recordService from "@/services/RecordService.js"

export default {
    props: ['record'],
    data() {
        return {
            recordId: this.record.recordId,
        }
    },
    methods: {
        deleteRecord() {
            recordService.deleteRecord(this.recordId).then(() => {
                //if ... status code?
                this.$store.commit("DELETE_RECORD_FROM_LIBRARY", this.record);
                    alert('Record successfully deleted.');
                    this.$router.push("/library");
                    location.reload();
            })
        }
    },
}
</script>

<style>
button {
  display: flex;
  border: 2pt solid black;
  border-radius: 10px;
  text-decoration: none;
  justify-content: center;
  background-color: white;
  font-family: monospace, sans-serif;
  color: #551A8B;
  margin-left: 30%;
  margin-right: 30%;
  padding-top: 5px;
  padding-bottom: 5px;
  margin-left: 7vw;
  margin-right: 7vw;
}

button:hover {
  background-color: black;
  border-color: white;
  color: white;
}
</style>