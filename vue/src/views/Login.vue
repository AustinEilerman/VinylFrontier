<template>
  <div id="home" class="text-center">
    <div id="collections">
      <h1>Public Collections</h1>
      <collections-list/>
    </div>
    <form class="form-signin" @submit.prevent="login" v-if="$store.state.token == ''">
      <h1 class="h3 mb-3 font-weight-normal">Login</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username<br>and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering,<br> please sign in.</div>
      <label for="username" class="sr-only">Username:</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password:</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <button type="submit">Sign in</button>
      <router-link :to="{ name: 'register' }">Register</router-link>
    </form>
    <div class="signed-in" v-if="$store.state.token != ''">
      You are signed in as {{this.$store.state.user.username}}.
    </div>
  </div>
</template>

<script>
import CollectionsList from '../components/CollectionsList.vue';
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {CollectionsList},
  data() {
    return {
      records: [],
      collections: [],
      allCollections: [],
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/dashboard");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style>

body {
  background-image: url(https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616_1280.jpg);
  background-attachment: fixed;
  background-color: #000000;
  background-size: cover;
}

#collections {
  font-family: monospace, sans-serif;
  font-size: 40;
  background-color: rgba(255,255,255,0.6);
  margin-top: 19vh;
  width: 77vw;
  border-radius: 20px;
}

.form-signin {
  color: white;
  font-family: monospace, sans-serif;
  background-color: rgba(174,112,213,0.70);
  display: flex;
  flex-direction: column;
  gap: 20px;
  height: 100vh;
  position: fixed;
  top: 19vh;
  right: 0;
  padding-left: 10px;
  padding-right: 10px;
  border-top-left-radius: 20px;
  width: 20vw;
}

.form-signin > input {
  margin-left: 10%;
  margin-right: 10%;
}

.form-signin > label {
  margin-left: 10%;
}

.signed-in {
  color: white;
  font-family: monospace, sans-serif;
  background-color: rgba(174,112,213,0.70);
  height: 100vh;
  position: fixed;
  top: 19vh;
  right: 0;
  padding-left: 30px;
  padding-right: 30px;
  border-top-left-radius: 20px;
  justify-content: center;
  padding-top: 40px;
  width: 17vw;
}

.form-signin > h1 {
  justify-content: center;
  padding-top: 20px;
  font-size: 15pt;
}

.form-signin > a {
  display: flex;
  border: 2pt solid black;
  border-radius: 10px;
  text-decoration: none;
  justify-content: center;
  background-color: white;
  margin-left: 30%;
  margin-right: 30%;
  padding-top: 5px;
  padding-bottom: 5px;
}

.form-signin > a:hover {
  background-color: black;
  border-color: white;
  color: white;
}

.form-signin > button {
  display: flex;
  margin-left: 7vw;
  margin-right: 7vw;
  justify-content: center;
}

.alert.alert-success {
  display: flex;
  justify-content: center;
  padding-left: 10%;
  padding-right: 10%;
}

.alert.alert-danger {
  display: flex;
  justify-content: center;
  padding-left: 10%;
  padding-right: 10%;
}

#collections > h1 {
  padding-top: 40px;
  color: white;
}

</style>