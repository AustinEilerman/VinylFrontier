<template>
  <div class="create-record">
    <button class="add-record" v-if="(!showForm && canCreateRecord())" v-on:click.prevent="showForm = true">Add New Record</button>
      <form class="record-form"  v-on:submit.prevent="createRecord"  v-show="showForm">
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
            <input type="number" v-model="record.length" min = 0>
          </div>
          <div>
            <label for="userNotes">Notes:</label>
            <input type="textarea" v-model="record.userNotes">
          </div>
          <div>
            <label for="userRating">Rating:</label>
            <input type="number" v-model="record.userRating" min = 0 max = 5>
          </div>
          <div>
            <label for="recordArtUrl">Cover Art URL:</label>
            <input type="text" v-model="record.coverArtUrl">
          </div>
          <button class="submit-buttons" type="submit">Save To Library</button>
          <button class= "submit-buttons" type="button" v-on:click.prevent="showForm = false">Cancel</button>
       </form>       
  </div>
</template>

<script>
import recordService from "@/services/RecordService.js"

export default {
    data() {
        return {
            record: {
                userId: this.$store.state.user.id,
                title: "",
                artist: "",
                genre: "",
                length: 1,
                userNotes: "",
                userRating: 1,
                coverArtUrl: ""
            },
            showForm: false,
            recordCounter: 0
        }
    },
    methods: {
        createRecord() {
            recordService.createRecord(this.record).then((response) => {
                if (response.status === 201) {
                    alert('New Record successfully created.');
                    this.$router.push({name: 'addRecord'});
                    location.reload();
                }
            });
        },
        canCreateRecord() {
          return this.$store.state.user.authorities[0].name === 'ROLE_PREMIUM' || this.recordCounter < 25;
        }       
    },
    created() {
    recordService.getAllRecords(this.$store.state.user.id).then((response) => {
      if (response.status === 200) {
        this.recordCounter = response.data.length;
      }
    });
  }
}
</script>
<style>
  form > div {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 10px;
    margin-top: 10px;
  }

  .submit-buttons {
    gap: 10px;
    color: #551A8B;
    margin-left: 40px;
    margin-top: 10px;
    margin-right: 50px;
    font-family: monospace, sans-serif;
    background-color: white;
    border: 2px solid black;
    border-radius: 10px;
    padding: 10px;
    margin-right: 10px;
  }

  .add-record {
    display: flex;
    color: #551A8B;
    margin-top: 2vh;
    font-family: monospace, sans-serif;
    background-color: white;
    border: 2px solid black;
    border-radius: 10px;
    padding: 10px;
    margin-right: 10px;
  }
</style>