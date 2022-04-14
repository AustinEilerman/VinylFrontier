<template>
  <div class="home">
    <h1>Welcome back, {{this.$store.state.user.username}}!</h1>
    <h2>You are now viewing your dashboard.</h2>
    <div class = "dashboard-nav">
      <router-link :to="{ name: 'addCollection' }">Create Collection</router-link>
      <router-link :to="{ name: 'addRecord' }">Add Record To Library</router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "home"
};
</script>

<style>
.home{
  font-size: 40;
  background-color: rgba(255,255,255,0.8);
  margin-top: 110px;
  border-radius: 20px;
  display:flex;
  flex-direction: column;
  padding-bottom: 20px;
}

.home > h1, h2 {
  font-family: monospace, sans-serif;
  display: flex;
  justify-content: center;
}

.dashboard-nav {
  font-family: monospace, sans-serif;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}

.dashboard-nav > a {
  border: 2px solid black;
  border-radius: 10px;
  background-color: white;
  text-decoration: none;
  padding: 20px;
}

.dashboard-nav > a:hover {
  color: white;
  border-color: white;
  background-color: black;
  padding: 20px;
}
</style>
