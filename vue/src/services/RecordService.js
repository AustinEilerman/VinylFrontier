import axios from 'axios';



export default {
    createRecord(record) {
        return axios.post('/records/library', record);
    },

    getRecord(recordId) {
        return axios.get(`/records/${recordId}`);
    },

    getAllRecords() {
        return axios.get('/records/library');
    }
}