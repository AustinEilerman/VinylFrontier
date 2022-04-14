<template>
  <div id="app">
    <div id="nav"> 
      <img class="logo" src="@/images/logoWIP.png" height="58"/>
      <div id="links">
        <router-link v-bind:to="{ name: 'home' }">Home</router-link>
        <router-link v-bind:to="{ name: 'records' }" v-if="$store.state.token != ''">Library</router-link>
        <router-link v-bind:to="{ name: 'collections' }" v-if="$store.state.token != ''">Collections</router-link>
        <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
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
}

#logo {
  grid-area: logo;
}

#links {
  background-color: rgba(255,255,255,0.8);
  border-radius: 5px;
  grid-area: links;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}

#search {
  grid-area: search;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding-right: 20px;
  gap: 10px;
}
</style>