<template>
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <router-link :to="{ name: 'login' }" id="have-account">Already have an account?</router-link>
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
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      />
      <div>
        <label for="premium">Upgrade to Premium?</label>
        <input type="checkbox" v-model="user.role" true-value="premium" false-value="user" v-on:click="changeUserRole($event)" />
      </div>
      <button id= "submit-button" class="btn btn-lg btn-primary btn-block" type="submit">
        Blast Off!
      </button>
    </form>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },

    changeUserRole(click) {
      if (click.target.click) {
        this.user.role = 'premium';
      }
    }
  },
};
</script>

<style>

.form-register {
  font-family: monospace, sans-serif;
  background-color: rgba(255,255,255,0.6);
  margin-top: 30vh;
  margin-left: 30vw;
  margin-right: 30vw;
  border-radius: 20px;
  padding-bottom: 30px;
  padding-left: 30px;
  padding-right: 30px;
  display: flex;
  gap: 10px;
  flex-direction: column;
}

.form-register > h1 {
  display: flex;
  font-family: monospace, sans-serif;
  justify-content: center;
}

#have-account {
  display: flex;
  justify-content: center;
}

#submit-button {
  display: flex;
  margin-left: 180px;
  margin-right: 180px;
  padding-top: 10px;
  padding-bottom: 10px;
  justify-content: center;
}

</style>
