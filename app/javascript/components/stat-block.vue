<template>
  <div id="stat-block">
    <ul>
      <li><span class="name">Strength</span><span class="value">{{ blockData.strength }}</span></li>
      <li><span class="name">Dexterity</span><span class="value">{{ blockData.dexterity }}</span></li>
      <li><span class="name">Constitution</span><span class="value">{{ blockData.constitution }}</span></li>
      <li><span class="name">Intelligence</span><span class="value">{{ blockData.intelligence }}</span></li>
      <li><span class="name">Wisdom</span><span class="value">{{ blockData.wisdom }}</span></li>
      <li><span class="name">Charisma</span><span class="value">{{ blockData.charisma }}</span></li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "StatBlock",
  props: {
    blockData: {
      typed: Object,
      default: () =>  {
        return {
          strength: 10,
          dexterity: 10,
          constitution: 10,
          intelligence: 10,
          wisdom: 10,
          charisma: 10,
        }
      }
    }
  },
  data: function () {
    return {}
  }
}
</script>

<style scoped>
ul {
  list-style: none;
  text-align: center;
}

ul li {
  border: 1px solid #aba;
  padding: 15px;
  display: inline-block;
}
ul li span {
  display: block;
}

ul li span.name {
  font-variant: small-caps;
}

ul li span.value {
  font-size: 1.4em;
}
</style>
