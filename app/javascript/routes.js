import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './components/app.vue'

Vue.use(VueRouter)

var router = new VueRouter({
  base: __dirname,
  routes: [
    {
      path: '/',
      component: App
    },
    {
      path: '/character/:id',
      component: App
    }]
})

export default router
