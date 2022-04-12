import axios from 'axios';

const http = axios.create({
    baseUrl: "http://localhost:8080"
});

export default {
    createCollection(collection) {
        return http.post('/collections', collection);
    }
}