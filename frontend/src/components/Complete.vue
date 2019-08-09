<template>
    <div>
  <b-card no-body  class="overflow-hidden" style="max-width: 75%; margin-left:13%">
    <b-row no-gutters>
        <b-card-body>
          <h3> 확인하세요 </h3>
      <b-col md="6" style="float:left">
      <b-form-group
        id="input-group-1"
        label="카테고리:"
        label-for="input-1"
      >
        <b-form-input
          id="input-1"
          v-model="form.category"
          required
          placeholder="Enter category"
          disabled
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 제목:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.project_name"
          required
          placeholder="Enter project name"
          disabled
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="예상 기간:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.period"
          required
          placeholder="Enter project period"
          disabled
        ></b-form-input>
      </b-form-group>
      
      <b-form-group id="input-group-2" label="예산:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.budget"
          required
          placeholder="Enter budget"
          disabled
        ></b-form-input>
      </b-form-group>

        <b-form-group id="input-group-4" label="기획 상태" >
          <b-form-input
          id="input-2"
          v-model="form.state"
          required
          placeholder="Enter budget"
          disabled
        ></b-form-input>
        </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 내용:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.contents"
          required
          placeholder="Enter budget"
          disabled
        ></b-form-input>
      </b-form-group>

      </b-col> 
      <b-col md="6" style="float:right">

      <b-form-group id="input-group-2" label="관련 기술:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.tech"
          required
          placeholder="Enter tech"
          disabled
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="모집 마감일자:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.deadline"
          required
          placeholder="Enter deadline"
          disabled
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="사전 미팅" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.meeting"
          required
          placeholder="Enter deadline"
          disabled
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="클라이언트 위치:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.location"
          required
          placeholder="Enter client location"
          disabled
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 모집 마감일:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.dead_line"
          required
          placeholder="Enter client dead_line"
          disabled
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 예상 시작일:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.start_date"
          required
          placeholder="Enter client start_date"
          disabled
        ></b-form-input>
      </b-form-group>
      </b-col>
     </b-card-body>
    </b-row>
  </b-card>
   <b-button id ="b" variant="outline-primary" style="margin-top: 12px;" @click='sendData'>확인</b-button>
</div>
</template>

<script>
export default {
    data(){
      return{

      }
    },
    props: ['form'],
    methods:{
      sendData(evt){
        evt.preventDefault()
        alert(JSON.stringify(this.form))
      }
    },
}
</script>

<style>

</style>
