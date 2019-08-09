<template>
<div>
      <b-card id ="loginCard" img-src="https://placekitten.com/300/300" img-alt="Card image" img-left class="mb-3">
        <!-- <b-form id = "login" @submit="onSubmit"> -->

      <b-card-text>
        <h3>Login</h3>
      </b-card-text>
      
        <b-form-group
          id="input-group-1"
          label="email:"
          label-for="input-1"
        >
          <b-form-input
            id="input-1"
            v-model="form.email"
            required
            placeholder="Enter email"
          ></b-form-input>
        </b-form-group>
          <b-form-group
          id="input-group-1"
          label="password:"
          label-for="input-1"
        >
          <b-form-input
            id="input-1"
            v-model="form.password"
            required
            placeholder="Enter password"
          ></b-form-input>
          
        </b-form-group>

    <b-button type="submit" variant="primary" @click="onSubmit">Submit</b-button>      
      <!-- </b-form> -->
    </b-card>
    {{form}}

</div>
</template>

<script>
import axios from 'axios'
export default {
  data(){
    return{
      form:{
        email:'',
        password:''
      }
    }
  },
   methods: {
      onSubmit() {
        console.log(this.form);
        // evt.preventDefault()

        axios.post('http://localhost:3000/login', {
            email:this.form.email,
            password:this.form.password
          }).then(
            (response) => { 
              this.$router.push('/');
            }
          );
    },
      onReset(evt) {
        evt.preventDefault()
        // Reset our form values
        this.form.email = ''
        this.form.name = ''
        this.form.food = null
        this.form.checked = []
        // Trick to reset/clear native browser form validation state
        this.show = false
        this.$nextTick(() => {
          this.show = true
        })
      }
    }
}
</script>

<style>

#loginCard{
  margin:10%;
}

#login label{
    float: left;
}
</style>

