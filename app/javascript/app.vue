<template>
  <b-container fluid="xl">
    <div id="app">
      <p>{{ message }}</p>
    </div>
  </b-container>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
