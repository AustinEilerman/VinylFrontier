<template>
  <div class= "record-list">
      <div class="record-display" v-for="record in records" v-bind:key="record.title">
        Title: {{ record.title}} <br>
        Artist: {{ record.artist }} <br>
        Genre: {{ record.genre }} <br>
        Notes: {{ record.userNotes }}
      </div>
  </div>
</template>

<script>
import recordService from "@/services/RecordService.js"
export default {
name: "record-list",
  data() {
    return {
      records: [],
    };
  },
  created() {
      recordService.getAllRecords().then((response) => {
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
    border-radius: 20px;
    height: 200px;
    width: 200px;
    text-align: center;
}
</style>