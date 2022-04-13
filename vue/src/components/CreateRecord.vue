<template>
  <div>
      <form v-on:submit.prevent="createRecord">
          <label for="recordTitle">Record Title*:</label>
          <input type="text" v-model="record.recordTitle" required="true"> <br>
          <label for="recordArtist">Record Artist*:</label>
          <input type="text" v-model="record.recordArtist" required="true"> <br>
          <label for="recordGenre">Genre*:</label>
          <input type="text" v-model="record.recordGenre" required="true"> <br>
          <label for="releaseDate">Release Date:</label>
          <input type="date" v-model="record.releaseDate"> <br>
          <label for="recordLength">Length:</label>
          <input type="number" v-model="record.recordLength"> <br>
          <label for="userNotes">Notes:</label>
          <input type="textarea" v-model="record.userNotes"> <br>
          <label for="userRating">Rating:</label>
          <input type="number" v-model="record.userRating" min=0, max=5>
          <button type="submit">Add Record</button>
       </form>       
  </div>
</template>

<script>
import recordService from "@/services/RecordService.js"

export default {
    data() {
        return {
            record: {
                recordUserId: 1,
                recordId: 300
            }
        }
    },
    methods: {
        createRecord() {
            const newRecord = {
                recordUserId: this.recordUserId,
                recordId: this.recordId,
                recordTitle: this.record.recordTitle,
                recordArtist: this.record.recordArtist,
                recordGenre: this.record.recordGenre,
                releaseDate: this.record.releaseDate,
                recordLength: this.record.recordLength,
                userNotes: this.record.userNotes,
                userRating: this.record.userRating
            }
            recordService.createRecord(newRecord).then(response => {
                if (response.status === 201) {
                    alert('New Record successfully created.');
                    this.$router.push('/records');
                }
            });
        }
    },
    created() {
        recordService.getRecord(this.recordId).then(response => {
            if (response.status === 200) {
                alert('Retrieved record.');
                this.$router.push(`/records/${this.recordId}`);
            }
        })
    }
}
</script>

<style>

</style>