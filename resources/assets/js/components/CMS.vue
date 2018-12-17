<template>
<div class="content">
    <div class="cms-sidemenu">
        <ul>
            <li><span class="menu" v-on:click="management = 'account'">會員管理</span></li>
            <li><span class="menu" v-on:click="management = 'card'">卡片管理</span></li>
        </ul>
    </div>

    <card_cms v-if="management == 'card'"></card_cms>
    
</div>
</template>

<script>
import card_cms from "./Card_CMS.vue";

export default {
    data: function(){
        return {
           management: "card"
        }
    },

    methods: {
        
    },

    mounted: function(){
        
    },

    components: {
        card_cms
    }
}
</script>

<style>
    li {
        list-style-type: none;
    }
    .menu {
        cursor: pointer;
    }
    .cms-sidemenu {
        display: inline-block;
        width: 300px;
        height: auto;
        position: absolute;
    }
</style>

