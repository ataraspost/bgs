<template>
  <div>
    <v-alert v-if="errorPassword" type="error">
      ERROR Password or User name.
    </v-alert>
    <v-form v-model="valid">
      <v-container>
        <v-row>
          <v-col
            cols="12"
            md="4"
          >
            <v-text-field
              v-model="userName"
              :rules="nameRules"
              :counter="10"
              label="User name"
              required
            />
          </v-col>
          <v-col
            cols="12"
            md="4"
          >
            <v-text-field
              v-model="password"
              :append-icon="show ? 'mdi-eye' : 'mdi-eye-off'"
              :type="show ? 'text' : 'password'"
              :rules="passwordRules"
              label="Password"
              required
              @click:append="show = !show"
            />
          </v-col>
        </v-row>
        <v-row justify="center">
          <v-col cols="5">
            <v-btn
              @click="login"
            >
              Login
            </v-btn>
          </v-col>
        </v-row>
      </v-container>
    </v-form>
  </div>
</template>

<script>

export default {
  components: {
  },
  data () {
    return {
      user: {
        name: 'testuser',
        id: 1,
        password: 'qazwsx'
      },
      show: false,
      userName: '',
      password: '',
      errorPassword: false,
      nameRules: [
        v => !!v || 'Name is required',
        v => v.length <= 10 || 'Name must be less than 10 characters',
      ],
      passwordRules: [
        v => !!v || 'Name is required'
      ]
    }
  },
  methods: {
    login () {
      if (this.user.name === this.userName && this.user.password == this.password) {
        localStorage.setItem('token', true)
        this.$router.push({ path: `/user/${this.user.id}` })
      } else {
        this.errorPassword = true
      }
    }
  },
  mounted () {
    if (localStorage.getItem('token')) {
      this.$router.push({ path: `/user/${this.user.id}` })
    }
  }
}
</script>
