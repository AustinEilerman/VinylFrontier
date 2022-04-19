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
    },

    updateRecordNote(recordId, record) {
        return axios.put(`/library/${recordId}`, record)
    },

    deleteRecord(recordId) {
        return axios.delete(`/delete/${recordId}`);
    }
}