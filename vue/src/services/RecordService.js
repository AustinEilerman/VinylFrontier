import axios from 'axios';

const http = axios.create({
    baseUrl: "http://localhost:8080"
});

export default {
    createRecord(record) {
        return http.post('/records', record);
    },

    getRecord(recordId) {
        return http.get(`/records/${recordId}`);
    }
}