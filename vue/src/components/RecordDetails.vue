<template>
  <div class="record-details">
    <img v-bind:src="record.coverArtUrl" />
    <h1>{{ record.title }}</h1>
    <p>{{ record.artist }}</p>
    <p>{{ record.genre }}</p>
    <p>{{ record.length }}</p>
    <p v-on:click.prevent="showForm = true" class="note-button">
      Notes: {{ record.userNotes }}
    </p>
    <p>{{ record.userRating }}</p>
    <delete-record v-bind:record="record" />
    <!-- <update-notes/> -->
    <add-record-to-collection v-bind:record="record" />
    <!-- <form v-show="showForm" v-on:submit.prevent="updateRecord(record)">
            <div class ="noteText">
                 <input name="noteText" type="text"/>
            </div>
            <button type="submit">Save</button>
        </form> -->
  </div>
</template>

<script>
import DeleteRecord from "./DeleteRecord.vue";
// import UpdateNotes from './UpdateNotes.vue'
import recordService from "../services/RecordService.js";
export default {
  components: { DeleteRecord /*,UpdateNotes*/ },
  methods: {
    updateRecord(record) {
      recordService
        .updateRecordNote(record.recordId, record)
        .then((response) => {
          if (response.status === 200) {
            alert("Note updated");
          }
        });
    },
  },
  data() {
    return {
      showForm: false,
      record: this.$store.state.activeRecord,
    };
  },
  created() {
      if (!window.location.hash) {
        window.location = window.location + "#load";
        window.location.reload();
      }
  },
};
</script>

<style>

</style>














