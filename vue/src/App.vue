<template>
  <div id="app">
    <div id="nav">
      <a href="/login"> 
        <img class="logo" src="@/images/logoWIP.png"/>
      </a>
      <div id="links" v-if="$store.state.token != ''">
        <router-link v-bind:to="{ name: 'home' }">Dashboard</router-link>
        <router-link v-bind:to="{ name: 'viewRecords' }">Library</router-link>
        <router-link v-bind:to="{ name: 'getAllCollections' }">Collections</router-link>
        <router-link v-bind:to="{ name: 'logout' }">Logout</router-link>
      </div>
      <div id="search" v-if="this.$route.name === 'login'">
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
  display: grid;
  width: 100%;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
  grid-template-areas: 
        "logo logo links links search";
  position: fixed;
  top: 0px;
  left: 0px;
  height: 18vh;
}

img {
  grid-area: logo;
  display: flex;
  align-items: center;
  max-width: 31vw;
  height: auto;
  padding-top: 10px;
  padding-bottom: 10px;
  padding-left: 20px;
}

#links {
  grid-area: links;
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
  grid-area: search;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding-right: 20px;
  gap: 10px;
  margin-left: 50px;
}
</style>