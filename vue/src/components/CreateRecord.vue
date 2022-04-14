<template>
  <div>
      <form v-on:submit.prevent="createRecord">
          <div>
            <label for="recordTitle">Record Title*:</label>
            <input type="text" v-model="record.title" required="true">
          </div>
          <div>
            <label for="recordArtist">Record Artist*:</label>
            <input type="text" v-model="record.artist" required="true">
          </div>
          <div>
            <label for="recordGenre">Genre*:</label>
            <input type="text" v-model="record.genre" required="true">
          </div>
            <!-- <label for="releaseDate">Release Date:</label> -->
            <!-- <input type="date" v-model="record.releaseDate"> <br> -->
          <div>
            <label for="recordLength">Length:</label>
            <input type="number" v-model="record.length">
          </div>
          <div>
            <label for="userNotes">Notes:</label>
            <input type="textarea" v-model="record.userNotes">
          </div>
          <div>
            <label for="userRating">Rating:</label>
            <input type="number" v-model="record.userRating" min="0" max="5">
          </div>
       </form>       
  </div>
</template>

<script>
import recordService from "@/services/RecordService.js"

export default {
    data() {
        return {
            record: {
                userId: 1,
                title: "",
                artist: "",
                genre: "",
                length: 1,
                userNotes: "",
                userRating: 1,
            }
        }
    },
    methods: {
        createRecord() {
            // const newRecord = {
            //     recordUserId: this.recordUserId,
            //     recordId: this.recordId,
            //     recordTitle: this.record.recordTitle,
            //     recordArtist: this.record.recordArtist,
            //     recordGenre: this.record.recordGenre,
            //     // releaseDate: this.record.releaseDate,
            //     recordLength: this.record.recordLength,
            //     userNotes: this.record.userNotes,
            //     userRating: this.record.userRating
            // }
            this.record.userId = this.$store.state.user.id;
            recordService.createRecord(this.record).then((response) => {
                if (response.status === 201) {
                    alert('New Record successfully created.');
                    this.$router.push('/records');
                }
            });
        }
    },
    // created() {
    //     recordService.getRecord(this.recordId).then(response => {
    //         if (response.status === 200) {
    //             alert('Retrieved record.');
    //             this.$router.push(`/records/${this.recordId}`);
    //         }
    //     });
    // }
}
</script>

<style>

</style>