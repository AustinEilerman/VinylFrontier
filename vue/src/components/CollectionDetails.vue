<template>
  <div class= "collection-details">
    <h1>{{collection.collectionName}}</h1>
    <p>This is a {{publicOrPrivate}} collection.</p>
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
            publicOrPrivate: "",
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
        getCollection() {
          CollectionService.getCollection(this.collectionId).then(response => {
          this.collection = response.data;
        });

        },
        publicPrivate() {
          let status = this.collection.public;
          if (!status) {
            this.publicOrPrivate = "public";
          } else if (status) {
            this.publicOrPrivate = "private";
          }
        }
    },
    created() {
        this.getRecordsInCollection();
        this.getCollection();
        this.publicPrivate();
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

.collection-details > p {
  text-align: center;
  padding-bottom: 10px;
}

</style>