<template>
  <div>
    <v-container>
      <v-row>
        <v-col>
          <v-card>
            Name: {{ this.user.name }}
          </v-card>
        </v-col>
        <v-col>
          <v-card>
            Email: {{ this.user.email }}
          </v-card>
        </v-col>
      </v-row>
      <v-row>
        <v-img
          :src="this.user.photo"
        />
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
      user: {
        id: 1,
        name: 'Test',
        email: 'test@test.com',
        photo: '/fake.jpg'
      }
    }
  },
  mounted () {
    if (this.user.id != this.$route.params.id) {
      this.$nuxt.error({ statusCode: 404, message: 'User not faund' })
    }
    if (!localStorage.getItem('token')) {
      this.$nuxt.error({ statusCode: 404 })
    }
  },
  methods: {
  }
}
</script>
