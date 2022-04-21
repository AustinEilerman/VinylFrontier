<template>
  <div>
    <form id="update-notes">
      <div class ="noteText">
        <input name="noteText" type="text" default="record.userNotes" v-model="userNotes"/>
      </div>
      <button type="submit" v-on:click="updateNote()" v-if="record.userId == this.$store.state.user.id">Update Notes</button>
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
.noteText > input[type="text"] {
  font-size: 4vh;
  font-family: monospace, sans-serif;
}

#update-notes {
  display: flex;
  gap: 40px;
  font-family: monospace, sans-serif;
}
#update-notes > button {
  margin-top: 10px;
  margin-bottom: 10px;
  align-items: center;
}

</style>