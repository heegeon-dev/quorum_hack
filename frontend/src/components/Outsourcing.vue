<template>
<div>
    <div>
        <b-card
            overlay
            img-src="https://picsum.photos/900/250/?image=3"
            img-alt="Card Image"
            text-variant="white"
            title="Image Overlay"
            sub-title="Subtitle"
        >
            <b-card-text>
            Some quick example text to build on the card and make up the bulk of the card's content.
            </b-card-text>
         </b-card>
    </div>
    <!-- <Complete/> -->
    <div>
      <component :is="whichStep"></component>
      <b-button variant="outline-primary" style="margin-top: 12px;" @click="previous">Previous step</b-button>
      <b-button variant="outline-primary" style="margin-top: 12px;" @click="next">Next step</b-button>
    </div>
    <MainNav />
</div>
</template>

<script>
import MainNav from '@/components/MainNav.vue'
import Insert from '@/components/Insert.vue'
import Complete from '@/components/Complete.vue'

export default {
components: {
    MainNav,
     'Insert': () => import('@/components/Insert.vue'),
     'Complete': () => import('@/components/Complete.vue'),
    // Insert,
    // Complete
  },data () {
    return {
      active: 0
    }
  },
  methods: {
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
    }
  }
}
</script>

<style>

</style>
