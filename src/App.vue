<template>
  <v-app>
    <v-app-bar
      app
      color="#497f90"
      dark
    >
      <div class="d-flex align-center">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="data:image/jpeg;base64,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"
          transition="scale-transition"
          width="40"
        />
      </div>

      <v-spacer></v-spacer>

      <v-btn
        href="https://github.com/vuetifyjs/vuetify/releases/latest"
        target="_blank"
        text
      >
        <span class="mr-2">Latest Shit</span>
        <v-icon>mdi-open-in-new</v-icon>
      </v-btn>

      <template v-slot:extension>
        <v-tabs
          v-model="tab"
          align-with-title
        >
          <v-tabs-slider color="yellow"></v-tabs-slider>

          <v-tab>
            Hauptseite
          </v-tab>
          <v-tab>
            Menschen
          </v-tab>
          <v-tab>
            Anderes
          </v-tab>
        </v-tabs>
      </template>
    </v-app-bar>

    <v-main>
      <v-tabs-items v-model="tab">
        <v-tab-item>
          <HelloWorld/>
        </v-tab-item>
        <v-tab-item>
          <Pupils
            :pupils="[
              { name: 'Ostermann Malte', text: 'Lorem Ipsum', birthDay: 'xx.xx.xxxx', seat: 'x'},
              { name: 'Satzinger Niklas', text: 'Lorem Ipsum', birthDay: 'xx.xx.xxxx', seat: 'x'},
              { name: 'Jonas Fröller', text: 'Lorem Ipsum', birthDay: 'xx.xx.xxxx', seat: 'x'},
              { name: 'Patrick Eder', text: 'Lorem Ipsum', birthDay: 'xx.xx.xxxx', seat: 'x'},
              { name: 'Marvin Anderson', text: 'Lorem Ipsum', birthDay: 'xx.xx.xxxx', seat: 'x'},
              { name: 'Tobias Feichtmeir', text: 'Lorem Ipsum', birthDay: 'xx.xx.xxxx', seat: 'x'},
              { name: 'Mathias Aman', text: 'Lorem Ipsum', birthDay: 'xx.xx.xxxx', seat: 'x'}
            ]"
          />
        </v-tab-item>
        <v-tab-item>
          <About/>
        </v-tab-item>
      </v-tabs-items>
    </v-main>
  </v-app>
</template>

<script>
import HelloWorld from './components/HelloWorld';
import Pupils from './components/Pupils'
import About from './components/About'

export default {
  name: 'App',

  components: {
    HelloWorld,
    Pupils,
    About
  },

  data: () => ({
    tab: null
  }),
};
</script>
