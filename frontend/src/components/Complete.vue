<template>
    <div>
  <b-card no-body class="overflow-hidden" style="max-width: 75%; margin-left:15%">
    <b-row no-gutters>
      <b-col md="6">
        <b-card-img src="https://picsum.photos/400/400/?image=20" class="rounded-0"></b-card-img>
      </b-col>
      <b-col md="6">
        <b-card-body title="Horizontal Card" style="margin-top:40%">
          <b-card-text>
            {{form}}
          </b-card-text>
        </b-card-body>
      </b-col>
    </b-row>
  </b-card>
</div>
</template>

<script>
export default {
    data(){
      return{

      }
    },
    props: ['form'],
    method:{
      
    },
}
</script>

<style>

</style>
