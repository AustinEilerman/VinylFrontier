<template>
  <div id="app">
    <div id="nav">
      <router-link :to="{ name: 'home' }"> 
        <img class="logo" src="@/images/logoWIP.png"/>
      </router-link>
      <div id="links" v-if="$store.state.token != ''">
        <router-link v-bind:to="{ name: 'dashboard' }">Dashboard</router-link>
        <router-link v-bind:to="{ name: 'viewRecords' }">Library</router-link>
        <router-link v-bind:to="{ name: 'getAllCollections' }">Collections</router-link>
        <router-link v-bind:to="{ name: 'logout' }">Logout</router-link>
      </div>
      <div id="search" v-if="this.$route.name === 'home'">
        <input type="text" class="search-term" placeholder="Search Collections...">
        <button type="submit" class="search-button">Search</button>
      </div>
    </div>
    <router-view />
  </div>
</template>

<style>
#nav {
  background-color: rgba(174,112,213);
  display: flex;
  justify-content: space-around;
  width: 100%;
  position: fixed;
  top: 0px;
  left: 0px;
  height: 18vh;
  z-index: 3;
}

.logo {
  margin-left: -10%;
  display: flex;
  padding-top: 1.5vh;
  max-height: 80%;
  object-fit: cover;
}

#links {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  margin-top: 20px;
  margin-bottom: 20px;
}

#links > a{
  text-decoration: none;
  font-family: monospace, sans-serif;
  background-color: white;
  border-radius: 10px;
  border: 2px solid black;
  padding: 10px;
  margin-right: 10px;
}

#links > a:hover {
  background-color: black;
  border-color: white;
  color: white;
}

#search {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding-right: 20px;
  gap: 10px;
  margin-left: 50px;
}
</style>