import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'
import axios from 'axios'
import VueAxios from 'vue-axios'

Vue.use(VueRouter)
Vue.use(VueAxios, axios)

import Gallery from './components/Gallery.vue'

const router = new VueRouter({
    mode: 'history',
    base: __dirname,
    routes: [
        {path: '/gallery', component: Gallery}
    ]
})

new Vue(Vue.util.extend({ router }, App)).$mount('#app')