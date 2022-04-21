<template>
  <div class= "record-list">
    <div class="record-display" v-for="record in records" v-bind:key="record.recordId">
      <div class="flip-card">
        <div class="flip-card-inner">
          <div class="flip-card-front">
            <img class="album-art" v-bind:src="record.coverArtUrl" v-bind:alt="record.title">
          </div>
          <div class="flip-card-back" v-on:click="setActiveRecord(record)">
            <router-link v-if="record" :to="{ name: 'recordDetails', params: {id: record.recordId}}">
              <h1>{{record.title}}</h1>
              <p>Artist: {{ record.artist }}</p>
              <p>Genre: {{ record.genre }}</p>
              <p>Rating: {{record.userRating}} out of 5</p>
              <p>Notes: {{record.userNotes}}</p>
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "record-list",
  props: ['records'],
  data() {
    return {
    
    }
  },
  methods: {
    setActiveRecord(record) {
      this.$store.commit('SET_ACTIVE_RECORD', record);
    }
  }
  }
</script>

<style>
.flip-card {
  background-color: transparent;
  width: 17vw;
  height: auto;
  aspect-ratio: 1 / 1;
  perspective: 1000px; 
}


.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: left;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-card-inner > h1 {
  text-align: center;
}


.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}


.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}


.flip-card-front {
  background-color: #bbb;
  color: black;
}


.flip-card-back {
  font-size: 2vh;
  background-color: rgba(0,0,0,0.6);
  font-family: monospace, sans-serif;
  color: white;
  transform: rotateY(180deg);
}

.flip-card-back > a > p {
  padding-left: 2em;
  padding-right: 2em;
  overflow-wrap: normal;
}

.flip-card-back > a > h1 {
  font-size: 3vh;
}

.record-list {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    flex-wrap: wrap;
    gap: 50px;
    padding-bottom: 5vh;
}

.album-art {
  display: flex;
  justify-content: center;
  padding: 0;
  max-width: 17vw;
  max-height: auto;
}

.note-button:hover {
  cursor: pointer;
}

.flip-card-back > a {
  text-decoration: none;
}

.flip-card-back > a:visited {
  color: white;
}

.flip-card-back > a:link {
  color: white;
}

</style>