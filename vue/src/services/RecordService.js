import axios from 'axios';



export default {
    createRecord(record) {
        return axios.post('/add-record', record);
    },

    getRecord(recordId) {
        return axios.get(`/records/${recordId}`);
    }
}