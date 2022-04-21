<template>
  <div class= "collection-details">
    <h1>{{collection.collectionName}}</h1>
    <records-list v-bind:records="records"/>
  </div>
</template>

<script>
import CollectionService from "@/services/CollectionService.js";
import RecordsList from "@/components/RecordsList.vue"

export default {
    components: {
        RecordsList
    },    
    name: "collection-details",
    data() {
        return {
            collectionId: this.$route.params.collectionId,
            records: [],
            collection: {},
        }
    },
    methods: {
        getRecordsInCollection() {
            CollectionService.getRecordsInCollection(this.collectionId).then(response => {
                if (response.status === 200) {
                    this.records = response.data;
                }
            })
        },
    },
    created() {
        this.getRecordsInCollection();
        CollectionService.getCollection(this.collectionId).then(response => {
          this.collection = response.data;
        });
    }
}

</script>

<style>
.collection-details {
  font-family: monospace, sans-serif;
  font-size: 40;
  background-color: rgba(255,255,255,0.6);
  margin-top: 20vh;
  border-radius: 20px;
  display:flex;
  flex-direction: column;
  padding-bottom: 20px;
}

h1 {
  font-family: monospace, sans-serif;
  text-align: center;
}

</style>