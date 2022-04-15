<template>
  <div class= "record-list">
      <div class="record-display" v-for="record in records" v-bind:key="record.title">
        <img class="album-art" v-bind:src="record.coverArtUrl">
        <br>
        Title: {{ record.title}} <br>
        Artist: {{ record.artist }} <br>
        Genre: {{ record.genre }} <br>
        Notes: {{ record.userNotes }}
        <add-record-to-collection />
      </div>
      
  </div>
</template>

<script>

import recordService from "@/services/RecordService.js"
import AddRecordToCollection from './AddRecordToCollection.vue';
export default {
  components: { AddRecordToCollection },
name: "record-list",
  data() {
    return {
      records: [],
    };
  },
  created() {
      recordService.getAllRecords(this.$store.state.user.id).then((response) => {
          this.records = response.data
      });
  }
}
</script>

<style>
.record-list {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    flex-wrap: wrap;
    justify-content: space-around;
    padding: 50px;
}

.record-display {
    border: 2px solid black;
    background-color: rgba(255,255,255,0.8);
    border-radius: 20px;
    height: 350px;
    width: 250px;
    text-align: left;
}

#text {
  padding-left: 20px;
}

.album-art {
  display: flex;
  justify-content: center;
  padding: 0;
  max-width: 250px;
  height: auto;
  border-radius: 20px;
}
</style>