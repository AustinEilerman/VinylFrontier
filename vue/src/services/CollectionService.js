import axios from 'axios';



export default {
    createCollection(collection) {
        return axios.post('/collections', collection);
    },

    getCollection(collectionId) {
        return axios.get(`/collections/${collectionId}`);
    },

    getCollectionsByUserId(userId) {
        return axios.get(`/collections?userId=${userId}`);
    },

    getAllCollections() {
        return axios.get('/collections');
    },

    addRecordToCollection(collectionId, record) {
        return axios.post(`/collections/${collectionId}`, record)
    },

    getRecordsInCollection(collectionId) {
        return axios.get(`/collections/${collectionId}/records`);
    }
}