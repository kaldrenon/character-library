<template>
  <div id="stat-block">
    <ul>
      <li><span class="name">Strength</span><span class="value">{{ str }}</span></li>
      <li><span class="name">Dexterity</span><span class="value">{{ dex }}</span></li>
      <li><span class="name">Constitution</span><span class="value">{{ con }}</span></li>
      <li><span class="name">Intelligence</span><span class="value">{{ int }}</span></li>
      <li><span class="name">Wisdom</span><span class="value">{{ wis }}</span></li>
      <li><span class="name">Charisma</span><span class="value">{{ cha }}</span></li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "StatBlock",
  data: function () {
    return {
      str: 18,
      dex: 18,
      con: 18,
      int: 18,
      wis: 18,
      cha: 18
    }
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
