<template>
  <div>
      <h1>
          {{ collection.name }}
      </h1>
  </div>
</template>

<script>
import collectionService from '@/services/CollectionService.js';
export default {
    data() {
        return {

        }
    },
    method: {
        getCollections() {
            collectionService.getCollection
        }
    }

}
</script>

<style>

</style>