<template>
  <div>
    <div>
      <h2 style="margin-top : 4%"> Project List </h2>
      <b-table @row-clicked="getProject" striped hover :items="items" style="margin-top : 2%"></b-table>
    </div>
    <MainNav />
  </div>
</template>

<script>
import MainNav from '@/components/MainNav.vue'
  export default {
    components:{
      MainNav
    },  
    data() {
      return {
        items: [
          { "번호": 40, "프로젝트명": 'Dickerson', "발주자": 'Macdonald' },
          { "번호": 21, "프로젝트명": 'Larsen', "발주자": 'Shaw' },
          { "번호": 89, "프로젝트명": 'Geneva', "발주자": 'Wilson' },
          { "번호": 38, "프로젝트명": 'Jami', "발주자": 'Carney' }
        ]
      }
    },
    methods:{
        getProject(){
            alert("클릭!!!")
        }
    },
  mounted(){
    console.log("ASDFASDFA");
    console.log(this.$session.get("user"));
  }
  }
</script>

<style>

</style>
