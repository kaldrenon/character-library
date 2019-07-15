<template>
  <div id="character">
    <h1 class="charName">{{ name }}</h1>
    <section class="basic-info">
      <span class="level">Level {{ level }}</span>
      <span class="race">{{ race }}</span>
      <span class="charClass">{{ charClass }}</span>
    </section>
    <stat-block str='18' dex='18' con='18' int='18' wis='18' cha='18'/>
  </div>

      </div>
</template>

<script>
import StatBlock from './stat-block.vue'

export default {
  name: "Character",
  components: {
    'stat-block': StatBlock
  },
  data: function () {
    return {
      name: "Hero Person",
      level: "1",
      race: "Human",
      charClass: "Fighter"
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
