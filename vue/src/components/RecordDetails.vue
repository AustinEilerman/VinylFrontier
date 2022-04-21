<template>
  <div class="record-details">
    <img v-bind:src="record.coverArtUrl" />
    <h1>{{ record.title }}</h1>
    <p>Artist: {{ record.artist }}</p>
    <p>Genre: {{ record.genre }}</p>
    <p>Runtime (s): {{ (record.length)/60 }} Minutes</p>
    <p>
      Notes: <update-notes v-bind:record="record"/>
    </p>
    <p>Rating: {{ record.userRating }} out of 5</p>
    <div id="user-controls" v-if="record.userId == this.$store.state.user.id">
        <delete-record v-bind:record="record" />
        <add-record-to-collection v-bind:record="record" />
    </div>
  </div>
</template>

<script>
import DeleteRecord from "./DeleteRecord.vue"
import UpdateNotes from './UpdateNotes.vue'
import AddRecordToCollection from "../components/AddRecordToCollection.vue"
export default {
  components: { DeleteRecord, AddRecordToCollection, UpdateNotes },
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
.record-details {
  font-family: monospace, sans-serif;
  font-size: 4vh;
  background-color: rgba(255,255,255,0.6);
  margin-top: 20vh;
  border-radius: 20px;
  display:flex;
  flex-direction: column;
  align-items: center;
  padding-bottom: 20px;
}

.record-details > img {
  display: flex;
  width: 37vw;
  align-items: center;
  padding-top: 7vh;
}

#user-controls {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: baseline;
  gap: 10vw;
}
</style>
