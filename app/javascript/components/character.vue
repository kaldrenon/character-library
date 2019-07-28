<template>
  <div id="character">
    <h1 class="charName">{{ attributes.name }}</h1>
    <section class="basic-info">
      <span class="level">Level {{ attributes.level }}</span>
      <span class="race">{{ attributes.race }}</span>
      <span class="charClass">{{ attributes.charClass }}</span>
    </section>
    <stat-block :blockData=attributes.stat_block></stat-block>
  </div>

      </div>
</template>

<script>
const axios = require('axios')
import StatBlock from './stat-block.vue'

export default {
  name: "Character",
  created () {
    this.loadCharacter()
  },
  components: {
    'stat-block': StatBlock
  },
  data: function () {
    return {
      attributes: {
        name: "nothing",
        level: "1",
        race: "Human",
        charClass: "Fighter"
      }
    }
  },
  methods: {
    loadCharacter () {
      axios
        .get('/api/character/1')
        .then(res => {
          var info = res.data.data.attributes
          console.log(info)
          Object.assign(this.attributes, info)
        })
    }
  }
}
</script>

<style scoped>
#character {
  color: #111;
}

h1.charName {
  font-variant: small-caps;
  font-family: 'Cinzel', serif;
  margin-bottom: 5px;
}
h1.charName:after {
  content:' ';
  display:block;
  border:1px solid #aba;
  border-radius:4px;
  -webkit-border-radius:4px;
  -moz-border-radius:4px;
  box-shadow:inset 0 1px 1px rgba(170, 187, 170 .05);
  -webkit-box-shadow:inset 0 1px 1px rgba(170, 187, 170 .05);
  -moz-box-shadow:inset 0 1px 1px rgba(170, 187, 170 .05);
}
</style>
