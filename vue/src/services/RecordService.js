import axios from 'axios';



export default {
    createRecord(record) {
        return axios.post('/library', record);
    },

    getRecord(recordId) {
        return axios.get(`/records/${recordId}`);
    },

    getAllRecords(userId) {
        return axios.get(`/library/${userId}`);
    }
}