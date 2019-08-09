import Vue from 'vue'
import Router from 'vue-router'
// import MainNav from '@/components/MainNav'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import BootstrapVue from 'bootstrap-vue/dist/bootstrap-vue.esm'
import Outsourcing from '@/components/Outsourcing'
import Login from '@/components/Login'
import ProjectList from '@/components/ProjectList'
import VueSession from 'vue-session'
Vue.use(BootstrapVue)
Vue.use(Router)
Vue.use(VueSession)
export default new Router({
  mode: 'history',
  routes: [
    // {
    //   path: '/',
    //   name: 'MainNav',
    //   component: MainNav
    // },
    // {
    //   path: '/Main',
    //   name: 'Main',
    //   component: Main
    // },
    {
      path: '/Outsourcing',
      name: 'Outsourcing',
      component: Outsourcing
    },
    {
      path: '/Login',
      name: 'Login',
      component: Login
    },
    {
      path: '/',
      name: 'ProjectList',
      component: ProjectList
    }
  ]
})
