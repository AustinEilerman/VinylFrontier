import axios from 'axios';



export default {
    createRecord(record) {
        return axios.post('/:userId/library', record);
    },

    getRecord(recordId) {
        return axios.get(`/records/${recordId}`);
    },

    getAllRecords(userId) {
        return axios.get(`/${userId}/library`);
    }
}