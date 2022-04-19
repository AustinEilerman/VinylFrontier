<template>
  <div>
    <form>
      <div class ="noteText">
        <input name="noteText" type="text" v-model="userNotes"/>
      </div>
      <button type="submit" v-on:click="updateNote()">Update Note</button>
    </form>
  </div>
</template>

<script>
import recordService from "../services/RecordService.js";

export default {
  name: 'update-notes',
  props: ["recordId"],
  data() {
    return {
      userNotes: ""
    };
  },

  methods: {
    updateNote() {
      const record = {
        recordId: this.recordId,
        userNotes: this.userNotes
      };
      recordService.updateRecordNote(this.recordId, record).then(response => {
        if (response.status === 200) {
          alert('Note successfully updated');
        }
      });
    }
  },
    created() {
    recordService
      .getRecord(this.recordId)
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

</style>