<template>
  <div id="login" class="text-center">
    <div id="collections">
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
      PUBLIC COLLECTIONS
    </div>
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Login</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password</label>
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
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
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
            this.$router.push("/");
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
  font-size: 120pt;
  background-color: rgba(255,255,255,0.4);
  margin-top: 110px;
  margin-right: 196px;
  border-radius: 20px;
}

.form-signin {
  color: white;
  font-family: verdana, sans-serif;
  background-color: rgba(174,112,213,0.70);
  grid-area: login;
  display: flex;
  flex-direction: column;
  gap: 30px;
  height: 100vh;
  position: fixed;
  top: 110px;
  right: 0;
  padding-left: 10px;
  padding-right: 10px;
  border-top-left-radius: 20px;
}

.form-signin > h1 {
  display: flex;
  justify-content: center;
  padding-top: 20px;
  font-size: 15pt;
}
</style>