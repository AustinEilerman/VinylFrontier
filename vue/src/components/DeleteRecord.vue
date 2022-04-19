<template>
  <div id="delete-record">
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
            })
        }
    },
}
</script>

<style>

</style>