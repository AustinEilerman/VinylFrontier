<template>
  <div>
    <form id="update-notes">
      <div class ="noteText">
        <input name="noteText" type="text" default="record.userNotes" v-model="userNotes"/>
      </div>
      <button type="submit" v-on:click="updateNote()">Update Notes</button>
    </form>
  </div>
</template>

<script>
import recordService from "../services/RecordService.js";

export default {
  name: 'update-notes',
  props: ["record"],
  data() {
    return {
      userNotes: ""
    };
  },

  methods: {
    updateNote() {
      const record = {
        recordId: this.record.recordId,
        userNotes: this.userNotes
      };
      recordService.updateRecordNote(this.record.recordId, record).then(response => {
        if (response.status === 200) {
          alert('Note successfully updated');
          this.$store.commit("UPDATE_NOTE_IN_RECORD", record);
        }
        location.reload();
      });
    }
  },
    created() {
    recordService
      .getRecord(this.record.recordId)
      .then(response => {
        this.$store.commit("SET_ACTIVE_RECORD", response.data);
        this.userNotes = response.data.userNotes;
      })
      .catch(error => {
        if (error.response.status == 404) {
          this.$router.push({name: 'NotFound'});
        }
      });
  }
        
}
</script>

<style>
input[type="text"] {
  font-size: 5vh;
  
}
#update-notes {
  display: flex;
  font-family: monospace, sans-serif;
}
</style>