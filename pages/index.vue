<template>
  <div>
    <v-container>
      <v-row justify="center">
        <v-col cols="1">
          <v-btn v-on:click="login" v-if="isLogin">Login</v-btn>
          <v-btn v-on:click="logout" v-else>Logout</v-btn>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>

export default {
  components: {
  },
  data () {
    return {
      isLogin: true
    }
  },
  methods: {
    login () {
      this.$router.push('login-form')
    },
    logout () {
      localStorage.removeItem('token')
      this.isLogin = true
    }
  },
  mounted () {
    const token = localStorage.getItem('token')
    if (token) {
      this.isLogin = false
    }
  }
}
</script>
