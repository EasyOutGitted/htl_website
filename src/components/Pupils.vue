<template>
  <v-container>
    <h2>
      Pupils
    </h2>
    <div class="">
      <v-card class="pa-0 ma-2" v-for="(pupil, i) in pupils" :key="i">
        <v-card-title class="">{{pupil.name}}</v-card-title>
        <v-card-text class="pa-0 ml-2">{{pupil.text}}</v-card-text>
        <v-card-text class="pa-0 ml-2">{{pupil.birthDay}}</v-card-text>
        <v-card-text class="pa-0 ml-2">{{pupil.seat}}</v-card-text>
      </v-card>
    </div>
  </v-container>
</template>

<script>
export default {
  name: 'Pupils',

  props: {
    pupils: {}
  },

  components: {
  },

  data: () => ({
  }),

  computed: {
  },

  watch: {
  },

  methods: {
  },

  mounted () {
  }
}
</script>

<style lang="scss">

</style>
