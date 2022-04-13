import axios from 'axios';



export default {
    createRecord(record) {
        return axios.post('/records', record);
    },

    getRecord(recordId) {
        return axios.get(`/records/${recordId}`);
    }
}