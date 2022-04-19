<template>
    <div class="record-details">
      <record-details/>  
    </div>
</template>

<script>
import RecordDetails from '../components/RecordDetails.vue'
export default {
    components: {RecordDetails},
}
</script>

<style>
.record-details {
  font-family: monospace, sans-serif;
  font-size: 40;
  background-color: rgba(255,255,255,0.6);
  margin-top: 20vh;
  border-radius: 20px;
  display:flex;
  flex-direction: column;
  padding-bottom: 20px;
}

.record-details > img {
  display: flex;
  width: 50vw;
  justify-content: center;
}
</style>