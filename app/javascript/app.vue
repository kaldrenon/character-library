<template>
  <div id="app">
    <character></character>
  </div>
</template>

<script>
import Character from './character.vue'

export default {
  name: "App",
  components: {
    'character': Character
  },
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
#app {
  margin: 25px;
  font-family: 'Merriweather', sans-serif;
}

p {
  font-size: 2em;
  text-align: center;
}
</style>
