<template>
<div>
    <div>
        <b-card
            overlay
            img-src="https://picsum.photos/900/250/?image=3"
            img-alt="Card Image"
            text-variant="black"
            title="프로젝트 정보 등록"
            img-height = "150px"
        >
            <b-card-text >
            상세하게 작성할수록 더 적합한 파트너스를 만날 수 있습니다.
            </b-card-text>
         </b-card>
    </div>
    <!-- <Complete/> -->
    <div>
      <component :is="whichStep" @sendForm='sendForm' :form=this.form></component>
      <!-- <b-button variant="outline-primary" style="margin-top: 12px;" @click="previous">Previous step</b-button>
      <b-button variant="outline-primary" style="margin-top: 12px;" @click="next">Next step</b-button> -->
    </div>
    form : {{form}}
    <MainNav />
</div>
</template>

<script>
import MainNav from '@/components/MainNav.vue'
// import Insert from '@/components/Insert.vue'
// import Complete from '@/components/Complete.vue'

export default {
components: {
    MainNav,
     'Insert': () => import('@/components/Insert.vue'),
     'Complete': () => import('@/components/Complete.vue'),
    // Insert,
    // Complete
  },data () {
    return {
      active: 0,
      test:1,
      form: {
          category: '',
          project_name: '',
          period: '',
          budget: '',
          state:'',
          contents:'',
          tech:'',
          dead_line:'',
          location:'',
          start_date:'',
          meeting:''
        }
    }
  },
  methods: {
    sendForm(form){
      this.form = form;
      this.active++;
    },
    previous() {
      if (this.active-- === 0) this.active = 1
    },
    next() {
      if (this.active++ > 0) this.active = 0
    }
  },
  computed: {
    whichStep () {
      switch (this.active) {
        case 0:
          return 'Insert'
        case 1:
          return 'Complete'
      }
      
    },
      sendData(){
        evt.preventDefault()
        alert(JSON.stringify(this.form))
      }
  }
}
</script>

<style>
.card img{
  opacity: 0.3;
}
.card .card-text{
  opacity: 0.7;
}
</style>
