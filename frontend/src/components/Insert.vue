<template>
    <div id = "insert">
    <b-form @submit="onSubmit" @reset="onReset" v-if="show">
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
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 제목:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.project_name"
          required
          placeholder="Enter project name"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="예상 기간:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.period"
          required
          placeholder="Enter project period"
        ></b-form-input>
      </b-form-group>
      
      <b-form-group id="input-group-2" label="예산:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.budget"
          required
          placeholder="Enter budget"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-4">
        <b-form-group label="기획 상태">
          <b-form-radio  v-model="form.state" name="some-radios" value="0">아이디어만 있습니다</b-form-radio>
          <b-form-radio  v-model="form.state" name="some-radios" value="1">필요한 내용을 간단히 정리하였습니다.</b-form-radio>
          <b-form-radio  v-model="form.state" name="some-radios" value="2">상세한 기획문서가 있습니다.</b-form-radio>
        </b-form-group>
      </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 내용:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.contents"
          required
          placeholder="Enter budget"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="관련 기술:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.tech"
          required
          placeholder="Enter tech"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="모집 마감일자:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.deadline"
          required
          placeholder="Enter deadline"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="사전 미팅" label-for="input-2">
        <b-form-select v-model="form.meeting" :options="select_option" class="mt-3"></b-form-select>
      </b-form-group>

      <b-form-group id="input-group-2" label="클라이언트 위치:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.location"
          required
          placeholder="Enter client location"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 모집 마감일:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.dead_line"
          required
          placeholder="Enter client dead_line"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="프로젝트 예상 시작일:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.start_date"
          required
          placeholder="Enter client start_date"
        ></b-form-input>
      </b-form-group>

      <b-button type="submit" variant="primary">Submit</b-button>
      <b-button type="reset" variant="danger">Reset</b-button>
    </b-form>
    <!-- <b-card class="mt-3" header="Form Data Result">
      <pre class="m-0">{{ form }}</pre>
    </b-card> -->
  </div>
  
</template>

<script>
export default {
  props:
    ['test']
  ,
    data() {
      return {
        
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
        },
        select_option:[
          { value: 'off', text: '오프라인 미팅' },
          { value: 'on', text: '온라인 미팅' },
        ],       
        show: true
      }
    },
    methods: {
      onSubmit(evt) {
        evt.preventDefault()
        alert(JSON.stringify(this.form))
        this.$emit('sendForm',this.form);
      },
      onReset(evt) {
        evt.preventDefault()
        // Reset our form values
          this.form.category= '',
          this.form.project_name= '',
          this.form.period= '',
          this.form.budget= '',
          this.form.state='',
          this.form.contents='',
          this.form.tech='',
          this.form.dead_line='',
          this.form.location='',
          this.form.start_date=''
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
#insert{
    padding-top: 5%;
    width: 70%;
    margin-left: 15%;
}
#insert label{
    float: left;
}
#input-group-4{
  text-align: left;
}
</style>