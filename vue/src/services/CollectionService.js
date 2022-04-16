import axios from 'axios';



export default {
    createCollection(collection) {
        return axios.post('/collections', collection);
    },

    getCollection(collectionId) {
        return axios.get(`/collections/${collectionId}`);
    },

    getCollectionByUserId(userId) {
        return axios.get(`/collections/${userId}`);
    },

    getAllCollections() {
        return axios.get('/collections');
    },

    addRecordToCollection(collectionId) {
        return axios.post(`/collections/${collectionId}`)
    }
}