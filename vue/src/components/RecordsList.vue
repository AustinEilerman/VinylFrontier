<template>
  <div class= "record-list">
      <div v-for="record in records" v-bind:key="record.title" class="record">
          {{ record.title}} ||
      {{ record.title }}
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

</style>